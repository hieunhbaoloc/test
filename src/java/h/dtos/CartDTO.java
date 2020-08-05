/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package h.dtos;

import java.io.Serializable;
import java.util.HashMap;

/**
 *
 * @author Blue
 */
public class CartDTO implements Serializable{
    private String customerName;
    private HashMap<String,BookDTO> shoppingCart;

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public HashMap<String, BookDTO> getShoppingCart() {
        return shoppingCart;
    }

    public CartDTO() {
        this.customerName="Guest";
        this.shoppingCart=new HashMap<>();
    }

    public CartDTO(String customerName) {
        this.customerName = customerName;
        this.shoppingCart=new HashMap<>();
    }

    public void addToCart(BookDTO dto) throws Exception{
        if(this.shoppingCart.containsKey(dto.getId())){
            int quantity=this.shoppingCart.get(dto.getId()).getQuantity()
                    +dto.getQuantity();
            dto.setQuantity(quantity);
        }
        this.shoppingCart.put(dto.getId(), dto);
    }
    
    public boolean remove(String id) throws Exception{
        if(this.shoppingCart.containsKey(id)){
            this.shoppingCart.remove(id);
            return true;
        }
        return false;
    }
    
    public boolean update(String id,int quantity) throws Exception{
        if(this.shoppingCart.containsKey(id)){
            this.shoppingCart.get(id).setQuantity(quantity);
            return  true;
        }
        return false;
    }
    
    public int getTotal(){
        int result =0;
        for(BookDTO dto:this.shoppingCart.values()){
            result +=(dto.getQuantity()*dto.getPrice());
        }
        return result;
    }
   
}
