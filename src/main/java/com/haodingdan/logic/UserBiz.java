package com.haodingdan.logic;

import com.haodingdan.bean.User;
import com.haodingdan.utils.hibernate.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

/**
 * Created by tgj on 2014/11/15.
 */
public class UserBiz {

    /**
     * 添加一个用户
     * @param user
     * @return
     */
    public Integer add(User user){
        Session session= HibernateUtil.getSession();
        HibernateUtil.begin();
        session.save(user);
        HibernateUtil.commit();
        return user.getId();
    }

    /**
     * 删除用户
     * @param id
     * @return
     */
    public boolean del(Integer id){
        Session session=HibernateUtil.getSession();
        try{
            HibernateUtil.begin();
            Query query=session.createQuery("delete  from User user where  user.id=:id");
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
     * @param user
     * @return
     */
    public boolean update(User user){
        Session session=HibernateUtil.getSession();
        try{
            HibernateUtil.begin();
            session.update(user);
            HibernateUtil.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            HibernateUtil.rollback();
            return false;
        }
    }

    /**
     * 根据id获取用户信息
     * @param id
     * @return
     */
    public User get(Integer id){
        Session session=HibernateUtil.getSession();
        return (User) session.get(User.class,id);
    }

    /**
     * 获取所有的用户
     * @return
     */
    public List<User> getAll(){
        Session session=HibernateUtil.getSession();
        Query query=session.createQuery("from  User");
        return query.list();
    }
}
