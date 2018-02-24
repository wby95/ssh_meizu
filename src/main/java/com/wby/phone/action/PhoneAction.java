package com.wby.phone.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.wby.brand.entity.Brand;
import com.wby.phone.entity.Phone;
import com.wby.phone.service.PhoneService;
import com.wby.phonesize.service.PhonesizeService;
import com.wby.utils.PageBean;

/**
 * Created by Administrator on 2017/12/19.
 */
public class PhoneAction extends ActionSupport implements ModelDriven<Phone> {
    PhoneService phoneService;
    Integer psid;
    PhonesizeService phonesizeService;
/*  接收当前页数
* */
    int page;

    public void setPage(int page) {
        this.page = page;
    }

    public void setPhonesizeService(PhonesizeService phonesizeService) {
        this.phonesizeService = phonesizeService;
    }
    public void setPsid(Integer psid) {
        this.psid = psid;
    }
    public void setPhoneService(PhoneService phoneService) {
        this.phoneService = phoneService;
    }
/*PhoneAction 在值栈里，提供getter方法在页面可获取
* */
    public Integer getPsid() {
        return psid;
    }

    Phone phone=new Phone();
    @Override
    public Phone getModel() {
        return phone;
    }
    public String findById(){
        phone=phoneService.findById(phone.getPid());
        return "findById";
    }
    public String findByBId(){
       Brand brand=phonesizeService.findByPsid(psid);
        ActionContext.getContext().getSession().put("brand",brand);
        PageBean<Phone> pageBean= phoneService.findByPageBid(psid,page);
        ActionContext.getContext().getValueStack().set("pageBean",pageBean);
        return "findByBId";
    }

    /*根据page=1和传过来的psid(先前写错id号，确切是bid查询手机)
    * */
    public String findByPageBid(){
      PageBean<Phone> pageBean= phoneService.findByPageBid(psid,page);
      ActionContext.getContext().getValueStack().set("pageBean",pageBean);
        return "findByPageBid";
    }

/*查出二级菜单项的手机
*/

    public String findByPsid() {
        PageBean <Phone> pageBean = phoneService.findByPagePsid(psid, page);
        ActionContext.getContext().getValueStack().set("pageBean1", pageBean);
        return "findByBId";
    }
}
