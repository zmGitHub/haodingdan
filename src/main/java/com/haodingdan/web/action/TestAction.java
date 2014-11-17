package com.haodingdan.web.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

/**
 * Created by tgj on 2014/11/14.
 */
@ParentPackage("struts-default")
@Namespace("/message")
public class TestAction extends ActionSupport {

    @Action(value = "test",results = {@Result(name = "success",location = "/success.jsp")})
    public String execute() throws Exception {
        return SUCCESS;
    }

    @Action(value = "Test_add",results = {@Result(name = "success",type = "chain",params ={"actionName","test","namespace","/message"}),@Result(name = "error",location = "/error.jsp")})
    public String add(){
        return SUCCESS;
    }
}
