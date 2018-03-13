package com.wby.user.dao;
import com.wby.user.entity.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/12/15.
 */
public class UserDao extends HibernateDaoSupport  {
@Resource
    private SessionFactory sessionFactory;


    public Session getSession(){
        return this.sessionFactory.getCurrentSession();
    }


    /*
            检验用户的合法性   http://blog.sina.com.cn/s/blog_14d1b6dc40102wofo.html
          * */
  public User checkLogin(User user){
      String hql = "FROM User u  WHERE u.username = ? and u.password=?";
      Query query = getSession().createQuery(hql).setString(0,user.getUsername())
              .setString(1,user.getPassword());
      user = (User)query.uniqueResult();
      return  user;
  }

  /*
  * 注册用户，保存数据库中
  * */
  public void registerin(User user){
          this.getHibernateTemplate().save(user);
      }


}
