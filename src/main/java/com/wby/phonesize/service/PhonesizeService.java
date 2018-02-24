package com.wby.phonesize.service;

import com.wby.brand.entity.Brand;
import com.wby.phonesize.dao.PhonesizeDao;
import com.wby.phonesize.entity.Phonesize;

import java.util.List;

/**
 * Created by Administrator on 2017/12/19.
 */
public class PhonesizeService {
    PhonesizeDao phonesizeDao;

    public void setPhonesizeDao(PhonesizeDao phonesizeDao) {
        this.phonesizeDao = phonesizeDao;
    }
    public Brand findByPsid(Integer psid){
        Brand psList= phonesizeDao.findByPsid(psid);
        return psList;
    }
}
