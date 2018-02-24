package com.wby.user.service;

import com.wby.user.dao.UserDao;
import com.wby.user.entity.User;

/**
 * Created by Administrator on 2017/12/15.
 */

public class UserService {


     UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    /*
          检验用户的合法性
       * */
    public User checkLogin(User user){
        return userDao.checkLogin(user);
    }
    /*注册用户，保存数据库中
    * */
    public void registerin(User user){
        userDao.registerin(user);
    }

}
