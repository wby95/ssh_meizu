package com.wby.car.entity;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/12/21.
 */
public class Cart {
    private Map <Integer, CartItem> map = new LinkedHashMap <Integer, CartItem>();
    private double total;

    public Collection <CartItem> getCartItems() {
        return map.values();
    }

    public Map <Integer, CartItem> getMap() {
        return map;
    }

    public void setMap(Map <Integer, CartItem> map) {
        this.map = map;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    /*增
    * */
    public void addCart(CartItem cartItem) {
    /*是否已经存在该商品*/
        Integer pid = cartItem.getPhone().getPid();
        if (map.containsKey(pid)) {
            CartItem cartItem1 = map.get(pid);
            cartItem1.setCount(cartItem1.getCount() + cartItem.getCount());


        } else {
            map.put(pid, cartItem);
        }
        total += cartItem.getSubTotal();
    }


    /*删*/
    public void removeCart(Integer pid) {
        CartItem cartItem = map.remove(pid);
        total -= cartItem.getSubTotal();

    }

    /*清空*/
    public void clearCart() {
        map.clear();
        total = 0;

    }
}
