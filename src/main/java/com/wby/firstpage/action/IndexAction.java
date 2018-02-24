package com.wby.firstpage.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.wby.brand.entity.Brand;
import com.wby.brand.service.BrandService;
import com.wby.phone.entity.Phone;
import com.wby.phone.service.PhoneService;
import com.wby.phonesize.entity.Phonesize;
import com.wby.phonesize.service.PhonesizeService;

import java.util.HashSet;
import java.util.List;

/**
 * Created by Administrator on 2017/12/17.
 */
/*首页跳转
* */
public class IndexAction extends ActionSupport{


    BrandService brandService;
    public void setBrandService(BrandService brandService) {
        this.brandService = brandService;
    }
    PhoneService phoneService;

    public void setPhoneService(PhoneService phoneService) {
        this.phoneService = phoneService;
    }
/*

    PhonesizeService phonesizeService;

    public void setPhonesizeService(PhonesizeService phonesizeService) {
        this.phonesizeService = phonesizeService;
    }
     Integer psid;

    public void setPsid(Integer psid) {
        this.psid = psid;
    }
*/

    public String execute(){

        List<Brand> blist=brandService.findBrand();
        ActionContext.getContext().getSession().put("blist",blist);
        List<Phone> phoneList=phoneService.findPhone();
        ActionContext.getContext().getSession().put("phoneList", phoneList);



       /* List<Phonesize>psList=phonesizeService.findByPsid(psid);
        ActionContext.getContext().getSession().put("psList",psList);*/
        return "index";
    }
}

