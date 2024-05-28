/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Cart {
    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(List<Item> items) {
        this.items = items;
    }
    public int getQuantityById(String id) {
      //  id=id+" ";
        System.out.println("==================================cart0=====================================");
        System.out.println(id+"aquan1");
        System.out.println(getItemById(id).getQuantity()+"aq2");
      //  id.trim();
        return getItemById(id).getQuantity();
        
    }
    private Item getItemById(String id){
        id=id.trim();
//        System.out.println("==================================cart0cc1=====================================");
//        System.out.println(id+"a1");
        for(Item i: items){
            String id2 =i.getProduct().getId();
            id2=id2.trim();
//            System.out.println("==================================cart0c2=====================================");
//            System.out.println(id2+"aa");
            if(id2.equals(id)){
//                System.out.println("==================================cart0cc3=====================================");
//                System.out.println(i);
                return i;
                 
            }
        }
        return null;
    }
    public void addItem(Item t){
        if(getItemById(t.getProduct().getId())!=null){
            Item m= getItemById(t.getProduct().getId());
            m.setQuantity(m.getQuantity()+t.getQuantity());
        }else{
            items.add(t);
        }
    }
    public void removeItem(String id){
        if(getItemById(id)!=null){
            items.remove(getItemById(id));
        }
    }
    public double getTotalMoney(){
        double t=0;
        for(Item i: items){
            t+=(i.getQuantity()*i.getPrice());
        }
        return t;
    }
    private Product getProductById1(String id, List<Product> list){
        System.out.println("==================================cart1=====================================");
        System.out.println(id+"a");
        System.out.println(list);
       // id=id+" ";
        for(Product i : list){
            String idp = i.getId().trim();
             System.out.println(idp+"aa");
            if(idp.equals(id)){ 
                System.out.println(i);
                return i;
            }
        }
        return null;
    }
    public Cart(String txt,List<Product> list){
        items =new ArrayList<>();
        try{
        if(txt!=null && txt.length()!=0){
            String [] s= txt.split("a");
            for( String i: s){
                String [] n=i.split(":");
                String id = (n[0]);
                int quantity= Integer.parseInt(n[1]);
                Product p= getProductById1(id, list);
                Item t= new Item(p, quantity, p.getPrice()*2);
                System.out.println("==================================cart2=====================================");
                System.out.println(t);
                addItem(t);
            }
        }
            
        }catch(NumberFormatException e){
            
        }
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    
}
