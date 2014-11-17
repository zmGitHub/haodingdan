package com.haodingdan.bean;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by tgj on 2014/11/14.
 * 招聘单位类别
 */
@Entity
@Table(name = "unitscategory")
public class UnitsCatagory implements Serializable {
    private Integer id;
    private String name;
    private Integer tag;//标识列,用来区分长期工与临时工

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "name",nullable = false)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
