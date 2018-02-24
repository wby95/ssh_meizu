package com.wby.car.entity;

import com.wby.phone.entity.Phone;

/**
 * Created by Administrator on 2017/12/21.
 */
public class CartItem {
    private Phone phone;
    private Integer count;
    private double subTotal;

    public Phone getPhone() {
        return phone;
    }

    public void setPhone(Phone phone) {
        this.phone = phone;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public double getSubTotal() {
        return count*phone.getPrice();
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }
}
