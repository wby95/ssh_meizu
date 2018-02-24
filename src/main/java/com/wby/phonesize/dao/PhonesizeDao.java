package com.wby.phonesize.dao;

import com.wby.brand.entity.Brand;
import com.wby.phone.entity.Phone;
import com.wby.phone.service.PhoneService;
import com.wby.phonesize.entity.Phonesize;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/12/19.
 */
public class PhonesizeDao extends HibernateDaoSupport{
    @Resource
    private SessionFactory sessionFactory;


    public Session getSession(){
        return this.sessionFactory.getCurrentSession();
    }
    String hql="  from Phonesize p where p.";
    public Brand findByPsid(Integer psid){
        Brand psList = this.getHibernateTemplate().get(Brand.class, psid);
    /*    List<Phonesize> psList;
      Query query = getSessionFactory().getCurrentSession().createQuery(hql);
         psList= query.list();*/
        return psList;
    }
}
