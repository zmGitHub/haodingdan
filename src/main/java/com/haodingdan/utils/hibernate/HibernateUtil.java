package com.haodingdan.utils.hibernate;

import org.apache.log4j.Logger;
import org.hibernate.Session;

/**
 * Created by Demon on 2014/10/29.
 */
public class HibernateUtil {
    //存放当前线程中的session,下面所有的方法,都是针对用一个session进行操作
    private final static ThreadLocal<Session> sessionPool = new ThreadLocal();
    private static Logger logger = Logger.getLogger(HibernateUtil.class);

    /**
     * 获取Session,如果线程中没有开启session则使用原生辅助类,开启一个session并存起来
     *
     * @return hibernate session
     */
    public static Session getSession() {
        if (sessionPool.get() == null) {
            logger.debug("开启Session");
            sessionPool.set(NativeHibernateUtil.getSession());
        }
        return sessionPool.get();
    }

    /**
     * 开启事务
     */
    public static void begin() {
        //判断事务是否已经开启
        if (!getSession().getTransaction().isActive()) {
            getSession().beginTransaction();
            logger.debug("开启事务");
        }
    }

    /**
     * 提交事务
     */
    public static void commit() {
        //判断事务是否已经处于为提交状态
        if (getSession().getTransaction().isActive()) {
            getSession().getTransaction().commit();
            logger.debug("提交事务");
        }
    }

    /**
     * 回滚事务
     */
    public static void rollback() {
        getSession().getTransaction().rollback();
        logger.debug("回滚事务");
    }

    /**
     * 关闭当前线程中的session
     */
    public static void closeSession() {
        if (sessionPool.get() != null) {
            if (getSession().isOpen()) {
                //关闭session
                getSession().close();
                logger.debug("关闭Session");
            }
            //把当前线程中的session引用设为null
            sessionPool.set(null);
        }
    }
}
