package com.haodingdan.logic;

import com.haodingdan.bean.JobArticle;
import com.haodingdan.utils.hibernate.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

/**
 * Created by tgj on 2014/11/16.
 */
public class JobArticleBiz {

    /**
     * 添加一篇文章
     * @param jobArticle
     * @return
     */
    public Integer add(JobArticle jobArticle){
        Session session= HibernateUtil.getSession();
        try{
            HibernateUtil.begin();
            session.save(jobArticle);
            HibernateUtil.commit();
            return jobArticle.getId();
        }catch (Exception e){
            e.printStackTrace();
            HibernateUtil.rollback();
            return -1;
        }
    }

    /**
     * 删除
     * @param id
     * @return
     */
    public  boolean del(Integer id){
        Session session= HibernateUtil.getSession();
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
     * 修改的方法
     * @param jobArticle
     * @return
     */
    public  boolean update(JobArticle jobArticle){
        Session session= HibernateUtil.getSession();
        try{
            HibernateUtil.begin();
            session.update(jobArticle);
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
    public JobArticle get(Integer id){
        Session session=HibernateUtil.getSession();
        return (JobArticle) session.get(JobArticle.class,id);
    }

    /**
     *根据分类id获取
     * @param jobId
     * @return
     */
    public List<JobArticle> getByJobId(Integer jobId){
        Session session=HibernateUtil.getSession();
        Query query=session.createQuery("from JobArticle article where  article.job.id=:id");
        query.setParameter("id",jobId);
        return query.list();
    }
}
