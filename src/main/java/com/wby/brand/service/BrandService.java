package com.wby.brand.service;

import com.wby.brand.dao.BrandDao;
import com.wby.brand.entity.Brand;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/12/19.
 */
public class BrandService {
   BrandDao brandDao;

    public void setBrandDao(BrandDao brandDao) {
        this.brandDao = brandDao;
    }
    public List<Brand> findBrand(){
        return brandDao.findBrand();
    }
}
