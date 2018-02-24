package com.wby.phonesize.entity;

import com.wby.brand.entity.Brand;
import com.wby.phone.entity.Phone;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by Administrator on 2017/12/19.
 */
/*
*   `psid` int(11) NOT NULL AUTO_INCREMENT,
  `psname` varchar(255) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
* */
public class Phonesize {
    private Integer psid;
    private String psname;
    private Brand brand;
    private Set<Phone> phones=new HashSet <Phone>();

    public Set <Phone> getPhones() {
        return phones;
    }

    public void setPhones(Set <Phone> phones) {
        this.phones = phones;
    }

    public Phonesize(Integer psid, String psname, Brand brand, Set <Phone> phones) {
        this.psid = psid;
        this.psname = psname;
        this.brand = brand;
        this.phones = phones;
    }

    public Phonesize() {
    }

    public Integer getPsid() {
        return psid;
    }

    public void setPsid(Integer psid) {
        this.psid = psid;
    }

    public String getPsname() {
        return psname;
    }

    public void setPsname(String psname) {
        this.psname = psname;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }
}
