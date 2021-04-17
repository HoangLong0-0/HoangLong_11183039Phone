package com.demo.model;

import javax.persistence.*;
import java.util.List;


//One to one: eager
//many to one: eager
//one to many: lazy
//many to many: lazy
@Entity
@Table(name = "brand")
public class BrandEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    private String name;

    @OneToMany(mappedBy = "brand", fetch = FetchType.LAZY)
    List<PhoneEntity> phones;

    public BrandEntity() {
    }

    public BrandEntity(String name) {
        this.name = name;
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
}
