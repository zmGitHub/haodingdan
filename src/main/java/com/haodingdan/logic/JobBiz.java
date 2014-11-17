package com.haodingdan.logic;

import com.haodingdan.bean.Job;
import com.haodingdan.utils.hibernate.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

/**
 * Created by tgj on 2014/11/16.
 */
public class JobBiz {

    /**
     * 添加一个要招聘的职位
     * @return
     */
    public int add(Job job){
        Session session= HibernateUtil.getSession();
        HibernateUtil.begin();
        session.save(job);
        HibernateUtil.commit();
        return job.getId();
    }

    /**
     * 删除
     * @param id
     * @return
     */
    public boolean del(Integer id){
        Session session=HibernateUtil.getSession();
        try{
            HibernateUtil.begin();
            Query query=session.createQuery("delete  from  Job job where  job.id=:id");
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
     * 根据分类id获取所有的要招聘的职位
     * @param categoryId
     * @return
     */
    public List<Job> getByUnitsCategoryId(Integer categoryId){
        Session session=HibernateUtil.getSession();
        Query query=session.createQuery("from Job job where  job.unitsCatagory.id=:categoryId");
        query.setParameter("categoryId",categoryId);
        return query.list();
    }

    /**
     * 根据id获取详情
     * @param id
     * @return
     */
    public Job get(Integer id){
        Session session=HibernateUtil.getSession();
        return (Job) session.get(Job.class,id);
    }
}
