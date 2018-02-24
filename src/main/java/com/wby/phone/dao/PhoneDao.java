package com.wby.phone.dao;

/**
 * Created by Administrator on 2017/12/19.
 */
import com.wby.phone.entity.Phone;

import com.wby.utils.PageHibernateCallback;

import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import com.wby.utils.PageHibernateCallback;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class PhoneDao extends HibernateDaoSupport {

    public List <Phone> findPhone() {
        String sql = "from Phone";
        List <Phone> phoneList = (List <Phone>) this.getHibernateTemplate().find(sql);

        return phoneList;

    }

    /*点击图片，显示商品详情
    * */
    public Phone findById(Integer pid) {
        return getHibernateTemplate().get(Phone.class, pid);
    }

    /*根据psid(pid)查询总记录数
    * */
    public int findCountBid(Integer psid) {
        String hql = "select count(*) from Phone p where p.phonesize.brand.bid=?";
        List <Long> list = (List <Long>) this.getHibernateTemplate().find(hql, psid);
        if (list != null && list.size() > 0) {
            return list.get(0).intValue();
        }

        return 0;
    }

    /*封装返回 根据psid(pid)查询总记录数*/
    public List <Phone> findByPageBid(Integer psid, int begin, int limit) {
        ArrayList arrayList=new ArrayList();
        String hql = "select p from Phone p join p.phonesize ps join ps.brand b where b.bid=?";
        List <Phone> plist = this.getHibernateTemplate().execute(new PageHibernateCallback <Phone>(hql, new Object[]{psid}, begin, limit));
        if (plist != null) {
            return plist;
        } else {
            return null;
        }
    }



    /*二级分类查商品个数
    */
    public int findCountpsid(Integer psid) {
        String hql = "select count(*) from Phone p where p.phonesize.psid=?";
        List <Long> list = (List <Long>) this.getHibernateTemplate().find(hql, psid);
        if (list != null && list.size() > 0) {
            return list.get(0).intValue();
        }
        return 0;
    }

    /*返回二级商品
    * */

    /**
     * 
     * @param psid
     * @param begin
     * @param limit
     * @return
     */
    /**/
    public List <Phone> findByPagepid(Integer psid, int begin, int limit) {

        String hql = "select p from Phone p join p.phonesize ps where ps.psid=?";
        List <Phone> list = this.getHibernateTemplate().execute(new PageHibernateCallback <Phone>(hql, new Object[]{psid}, begin, limit));
        if (list != null) {
            return list;
        } else {
            return null;
        }
    }
}