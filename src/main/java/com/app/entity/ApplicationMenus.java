package com.app.entity;

import javax.persistence.*;

@Entity
@Table(name="applications_menus")
public class ApplicationMenus {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id ;

    String name ;

    String icon_class ;

    String path ;

    Long sequence;

    Long applicationid;

    Long main_menu_id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIcon_class() {
        return icon_class;
    }

    public void setIcon_class(String icon_class) {
        this.icon_class = icon_class;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Long getSequence() {
        return sequence;
    }

    public void setSequence(Long sequence) {
        this.sequence = sequence;
    }

    public Long getApplicationid() {
        return applicationid;
    }

    public void setApplicationid(Long applicationid) {
        this.applicationid = applicationid;
    }

    public Long getMain_menu_id() {
        return main_menu_id;
    }

    public void setMain_menu_id(Long main_menu_id) {
        this.main_menu_id = main_menu_id;
    }
}
