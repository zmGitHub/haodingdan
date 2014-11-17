package com.haodingdan.bean;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by tgj on 2014/11/14.
 * 招聘的职位
 */
@Entity
@Table(name = "job")
public class Job implements Serializable{
    private Integer id;
    private String name;
    private UnitsCatagory unitsCatagory;

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @ManyToOne(cascade = CascadeType.MERGE,optional = false)
    @JoinColumn(name = "uid",referencedColumnName = "id")
    public UnitsCatagory getUnitsCatagory() {
        return unitsCatagory;
    }

    public void setUnitsCatagory(Recruit recruit) {
        this.unitsCatagory = unitsCatagory;
    }
}
