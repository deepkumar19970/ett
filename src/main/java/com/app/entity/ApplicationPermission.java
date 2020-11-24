package com.app.entity;

import javax.persistence.*;

@Entity
@Table(name="application_permission")
public class ApplicationPermission {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id ;

    Long usertypeid;

    Long applicationid;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUsertypeid() {
        return usertypeid;
    }

    public void setUsertypeid(Long usertypeid) {
        this.usertypeid = usertypeid;
    }

    public Long getApplicationid() {
        return applicationid;
    }

    public void setApplicationid(Long applicationid) {
        this.applicationid = applicationid;
    }
}
