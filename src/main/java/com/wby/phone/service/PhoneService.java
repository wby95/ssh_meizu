package com.wby.phone.service;

import com.wby.phone.dao.PhoneDao;
import com.wby.phone.entity.Phone;
import com.wby.utils.PageBean;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2017/12/19.
 */
@Transactional
public class PhoneService {
    PhoneDao phoneDao;

    public void setPhoneDao(PhoneDao phoneDao) {
        this.phoneDao = phoneDao;
    }

    public List <Phone> findPhone() {

        return phoneDao.findPhone();

    }


    public Phone findById(Integer pid) {
        return phoneDao.findById(pid);
    }

    /*根据page=1和传过来的psid(先前写错id号，确切是bid查询手机)
      * */
    public PageBean <Phone> findByPageBid(Integer psid, int page) {
        PageBean <Phone> pageBean = new PageBean <Phone>();
/*设置当前页数*/
        pageBean.setPage(page);
        /*设置显示的记录数*/
        int limit = 2;
        pageBean.setLimit(limit);
/*设置总记录数*/
        int totalCount = 0;
        totalCount = phoneDao.findCountBid(psid);
        pageBean.setTotalCount(totalCount);
/*设置总页数*/
        int totalPage = 0;
        if (totalCount % limit == 0) {
            totalPage = totalCount / limit;
        } else {
            totalPage = totalCount / limit + 1;
        }
        pageBean.setTotalPage(totalPage);
/*从哪里开始*/
        int begin = (page - 1) * limit;
        List <Phone> plist = phoneDao.findByPageBid(psid, begin, limit);
        pageBean.setList(plist);
        return pageBean;
    }
/*查出二级菜单项的手机
*/

    public PageBean <Phone> findByPagePsid(Integer psid, int page) {
        PageBean <Phone> pageBean = new PageBean <Phone>();
/*设置当前页数*/
        pageBean.setPage(page);
        /*设置显示的记录数*/
        int limit = 2;
        pageBean.setLimit(limit);
/*设置总记录数*/
        int totalCount = 0;
        totalCount = phoneDao.findCountpsid(psid);
        pageBean.setTotalCount(totalCount);
/*设置总页数*/
        int totalPage = 0;
        if (totalCount % limit == 0) {
            totalPage = totalCount / limit;
        } else {
            totalPage = totalCount / limit + 1;
        }
        pageBean.setTotalPage(totalPage);
/*从哪里开始*/
        int begin = (page - 1) * limit;
        List <Phone> plist = phoneDao.findByPagepid(psid, begin, limit);
        pageBean.setList(plist);
        return pageBean;
    }
}
