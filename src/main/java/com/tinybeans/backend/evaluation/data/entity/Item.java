package com.tinybeans.backend.evaluation.data.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import java.util.List;

/**
 * @author danrodrigues
 * Date: 13/5/22
 */
@Entity @Data @ToString
@EqualsAndHashCode(callSuper = true)
public class Item extends BaseEntity{

    private String name, description, photoUrl;

    private Double price;

    @ManyToMany(mappedBy = "items")
    private List<Orders> orders;
}
