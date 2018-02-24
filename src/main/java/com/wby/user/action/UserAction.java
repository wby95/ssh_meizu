package com.wby.user.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.wby.brand.entity.Brand;
import com.wby.brand.service.BrandService;
import com.wby.user.entity.User;
import com.wby.user.service.UserService;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/12/15.
 */

/*
* 继承 ActionSupport
* */
public class UserAction extends ActionSupport implements RequestAware,
        ModelDriven <User>, Preparable {


    private static final long serialVersionUID = 1L;

    private UserService userService;
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    private Map <String, Object> request;
    private User user = new User();

    @Override
    public User getModel() {
        return user;
    }

    @Override
    public void prepare() throws Exception {
    }
    @Override
    public void setRequest(Map <String, Object> arg0) {
        this.request = arg0;
    }

/*用户登录
* */
    public String login() {
        User existUser = userService.checkLogin(user);
        // System.out.print(existUser.getPassword());
        if (existUser != null) {
            //request.put("existUser",existUser);

            ActionContext.getContext().getSession().put("existUser",existUser);
            return "SUCCESS";

        } else {
            return "LOGIN";
        }
    }
    public String logout(){
        //request.remove("existUser");
        ServletActionContext.getContext().getSession().remove("existUser");
        return "logout";
    }

/*用户注册，跳转注册页面
* */
public String register(){
    return "register";
}
/*
* 用户注册，加入数据库中
* */
public String registerin(){
   userService.registerin(user);
    return "registerin";
}
}
