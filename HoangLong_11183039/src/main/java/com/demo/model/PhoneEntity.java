package com.demo.model;

import javax.persistence.*;

@Entity
@Table(name = "phone")
public class PhoneEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "name")
    private String name;
    @Column(name = "price")
    private int price;
    @Column(name = "brand_id")
    private int brand_id;

    public PhoneEntity(String name, int price, int brand_id, String description) {
        this.name = name;
        this.price = price;
        this.brand_id = brand_id;
        this.description = description;
    }

    public BrandEntity getBrand() {
        return brand;
    }

    public void setBrand(BrandEntity brand) {
        this.brand = brand;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    @Column(name = "description")
    private String description;

    public void setPrice(int price) {
        this.price = price;
    }


    @ManyToOne() //EAGER
    @JoinColumn(name = "brand_id", insertable = false, updatable = false)
    private BrandEntity brand;
    public PhoneEntity(){

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
