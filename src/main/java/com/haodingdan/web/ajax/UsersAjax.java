package com.haodingdan.web.ajax;

import com.haodingdan.bean.User;
import com.haodingdan.logic.UserBiz;
import me.danwi.eazyajax.container.annotations.AjaxClass;
import me.danwi.eazyajax.container.annotations.AjaxFunc;

import java.util.List;

/**
 * Created by turbo on 14-11-22.
 */
@AjaxClass
public class UsersAjax {
    private UserBiz userBiz = new UserBiz();

    @AjaxFunc
    public List<User> getAll(){
        return userBiz.getAll();
    }

    @AjaxFunc
    public User getUserById(int uid){
        return userBiz.get(uid);
    }

    @AjaxFunc
    public Boolean del(int uid){
        return userBiz.del(uid);
    }
}
