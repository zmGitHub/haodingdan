package com.haodingdan.utils.hibernate;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;


/**
 * 原生的Hibernate辅助类
 * Created by dime on 14-7-29.
 */
public class NativeHibernateUtil {
    private static SessionFactory sessionFactory = null;

    static {
        Configuration configuration = new AnnotationConfiguration().configure();
        sessionFactory = configuration.buildSessionFactory();
    }

    public static Session getSession() {
        return sessionFactory.openSession();
    }
}
