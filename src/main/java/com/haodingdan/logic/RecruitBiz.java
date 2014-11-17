package com.haodingdan.logic;

import com.haodingdan.bean.Recruit;
import com.haodingdan.utils.hibernate.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

/**
 * Created by tgj on 2014/11/16.
 */
public class RecruitBiz {

    /**
     * 添加
     * @param recruit
     * @return
     */
    public Integer add(Recruit recruit){
        Session session= HibernateUtil.getSession();
        try{
            HibernateUtil.begin();
            session.save(recruit);
            HibernateUtil.commit();
            return recruit.getId();
        }catch (Exception e){
            e.printStackTrace();
            HibernateUtil.rollback();
            return -1;
        }
    }

    /**
     * 根据id删除
     * @param id
     * @return
     */
    public boolean del(Integer id){
        Session session=HibernateUtil.getSession();
        try{
            HibernateUtil.begin();
            Query query=session.createQuery("delete  from Recruit recruit where recruit.id=:id");
            query.setParameter("id",id);
            query.executeUpdate();
            HibernateUtil.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            HibernateUtil.rollback();
            return false;
        }
    }

    /**
     * 更新的方法
     * @param recruit
     * @return
     */
    public boolean update(Recruit recruit){
        Session session=HibernateUtil.getSession();
        try{
            HibernateUtil.begin();
            session.update(recruit);
            HibernateUtil.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            HibernateUtil.rollback();
            return false;
        }
    }

    /**
     * 根据id获取
     * @param id
     * @return
     */
    public Recruit get(Integer id){
        Session session=HibernateUtil.getSession();
        return (Recruit) session.get(Recruit.class,id);
    }

    /**
     * 获取所有
     * @return
     */
    public List<Recruit> getAll(){
        Session session=HibernateUtil.getSession();
        return session.createQuery("from Recruit").list();
    }
}
