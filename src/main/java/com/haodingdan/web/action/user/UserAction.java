package com.haodingdan.web.action.user;

import com.haodingdan.bean.User;
import com.haodingdan.logic.UserBiz;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import net.sf.json.JSONObject;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;

import java.io.IOException;
import java.io.PrintWriter;


/**
 * Created by a on 2014/11/20.
 */
@ParentPackage("struts-default")
@Namespace("/front")
public class UserAction extends ActionSupport implements ModelDriven<User> {
    private String reg_name;
    private String reg_password;
    private String reg_configPassword;
    private String reg_email;
    private String reg_phone;

    private User user=new User();

    UserBiz userBiz=new UserBiz();

    @Action(value = "user_reg")
    public void Reg() throws IOException {
        User user1=new User();
        user1.setName(reg_name);
        user1.setPassword(reg_password);
        user1.setEmail(reg_email);
        user1.setPhone(reg_phone);
        Integer id=userBiz.add(user1);
        PrintWriter out = ServletActionContext.getResponse().getWriter();
        out.println(id);
    }

    @Action(value = "user_login")
    public void Login() throws IOException {
        PrintWriter out = ServletActionContext.getResponse().getWriter();
        boolean result=userBiz.login(user.getName(),user.getPassword());
        if(result){
            ActionContext actionContext=ActionContext.getContext();
            actionContext.getSession().put("name",user.getName());
        }
        out.println(result==true?user.getName():0);
    }

    @Action(value = "user_validate")
    public void validateReg()throws IOException {
        PrintWriter out = ServletActionContext.getResponse().getWriter();
        User user1=userBiz.getByName(reg_name);
        if(user1==null){
            out.println(true);
        }else{
            out.println(false);
        }
    }

    @Override
    public User getModel() {
        return user;
    }

    public String getReg_name() {
        return reg_name;
    }

    public void setReg_name(String reg_name) {
        this.reg_name = reg_name;
    }

    public String getReg_password() {
        return reg_password;
    }

    public void setReg_password(String reg_password) {
        this.reg_password = reg_password;
    }

    public String getReg_email() {
        return reg_email;
    }

    public void setReg_email(String reg_email) {
        this.reg_email = reg_email;
    }

    public String getReg_phone() {
        return reg_phone;
    }

    public void setReg_phone(String reg_phone) {
        this.reg_phone = reg_phone;
    }

    public String getReg_configPassword() {
        return reg_configPassword;
    }

    public void setReg_configPassword(String reg_configPassword) {
        this.reg_configPassword = reg_configPassword;
    }
}
