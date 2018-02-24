package com.wby.phone.entity;

import com.wby.phonesize.entity.Phonesize;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by Administrator on 2017/12/19.
 */
/*  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `psid` int(11) DEFAULT NULL,

*/

public class Phone {
    private Integer pid;
    private String pname;
    private double price;
    private String pdesc;
    private String image;
    private Integer pnum;
    /*关联（2级）的外键，用2级分类的对象
    * */

    private Phonesize phonesize;

    public Phonesize getPhonesize() {
        return phonesize;
    }

    public void setPhonesize(Phonesize phonesize) {
        this.phonesize = phonesize;
    }

    public Phone() {
    }

    public Phone(Integer pid, String pname, double price, String pdesc, String image, Integer pnum, Phonesize phonesize) {
        this.pid = pid;
        this.pname = pname;
        this.price = price;
        this.pdesc = pdesc;
        this.image = image;
        this.pnum = pnum;
        this.phonesize = phonesize;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getPnum() {
        return pnum;
    }

    public void setPnum(Integer pnum) {
        this.pnum = pnum;
    }
}
