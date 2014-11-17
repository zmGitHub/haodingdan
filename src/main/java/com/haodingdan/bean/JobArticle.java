package com.haodingdan.bean;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by tgj on 2014/11/14.
 * 招聘信息
 */
@Entity
@Table(name = "jobarticle")
@DynamicInsert(true)
@DynamicUpdate(true)
public class JobArticle implements Serializable {
    private Integer id;
    private String title;
    private String introduce;//简介
    private String details;//描述
    private Date pubishTime;//发布时间
    private String address;//地址
    private Job job;

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column(name = "introduce")
    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    @Column(name = "details")
    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    @Column(name = "pubishtime")
    public Date getPubishTime() {
        return pubishTime;
    }

    public void setPubishTime(Date pubishTime) {
        this.pubishTime = pubishTime;
    }

    @Column(name = "address")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @ManyToOne(cascade = CascadeType.MERGE,optional = false)
    @JoinColumn(name = "jid",referencedColumnName = "id")
    public Job getJob() {
        return job;
    }

    public void setJob(Job job) {
        this.job = job;
    }
}
