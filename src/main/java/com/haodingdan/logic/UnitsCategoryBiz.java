package com.haodingdan.logic;

import com.haodingdan.bean.UnitsCatagory;
import com.haodingdan.utils.hibernate.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

/**
 * Created by tgj on 2014/11/16.
 */
public class UnitsCategoryBiz {

    /**
     * 添加一个大分类
     * @param unitsCatagory
     * @return
     */
    public int add(UnitsCatagory unitsCatagory){
        Session session= HibernateUtil.getSession();
        HibernateUtil.begin();
        session.save(unitsCatagory);
        HibernateUtil.commit();
        return unitsCatagory.getId();
    }

    /**
     * 删除一个大分类
     * @param id
     * @return
     */
    public boolean del(Integer id){
        Session session=HibernateUtil.getSession();
        try{
            HibernateUtil.begin();
            Query query=session.createQuery("delete  from UnitsCatagory category where  category.id=:id");
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
     * 根据标识列获取相应的分类
     * @param tag
     * @return
     */
    public List<UnitsCatagory> getByTag(Integer tag){
        Session session=HibernateUtil.getSession();
        Query query=session.createQuery("from UnitsCatagory category where  category.tag=:tag");
        query.setParameter("tag",tag);
        return query.list();
    }

    /**
     * 根据id获取
     * @param id
     * @return
     */
    public UnitsCatagory get(Integer id){
        Session session=HibernateUtil.getSession();
        return (UnitsCatagory) session.get(UnitsCatagory.class,id);
    }
}
