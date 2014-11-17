package com.haodingdan.utils.hibernate;


import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

/**
 * Created by Demon on 2014/10/29.
 */
@WebListener
public class SessionListener implements ServletRequestListener {
    @Override
    public void requestDestroyed(ServletRequestEvent servletRequestEvent) {
        //请求完毕,关闭当前请求管线(线程)中没有关闭的session
        HibernateUtil.closeSession();
    }

    @Override
    public void requestInitialized(ServletRequestEvent servletRequestEvent) {
    }
}
