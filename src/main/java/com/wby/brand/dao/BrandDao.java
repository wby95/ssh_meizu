package com.wby.brand.dao;

import com.opensymphony.xwork2.ActionSupport;
import com.wby.brand.entity.Brand;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/12/19.
 */
public class BrandDao extends HibernateDaoSupport {
    @Resource
    SessionFactory sessionFactory;
    public List<Brand> findBrand() {
        String hql = "from Brand";
        List <Brand> list = (List <Brand>) this.getHibernateTemplate().find(hql);
        return list;
    }
}
