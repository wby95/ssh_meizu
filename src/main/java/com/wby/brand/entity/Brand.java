package com.wby.brand.entity;

/*import com.wby.phonesize.entity.Phonesize;*/

import com.wby.phonesize.entity.Phonesize;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by Administrator on 2017/12/19.
 */
public class Brand {
    private Integer bid;
    private String bname;
    private Set<Phonesize> phonesizesets=new HashSet<Phonesize>();

    public Set <Phonesize> getPhonesizesets() {
        return phonesizesets;
    }

    public void setPhonesizesets(Set <Phonesize> phonesizesets) {
        this.phonesizesets = phonesizesets;
    }

    public Brand(Integer bid, String bname) {
        this.bid = bid;
        this.bname = bname;
    }

    public Brand() {
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }
}
