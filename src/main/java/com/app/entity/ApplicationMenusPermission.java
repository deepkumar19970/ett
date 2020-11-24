package com.app.entity;

import javax.persistence.*;

@Entity
@Table(name="applications_menus_permission")
public class ApplicationMenusPermission {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id ;

    Long usertypeid;

    Long applications_menuid;

    Boolean isview,isdelete,ismodefy,isinsert,isexport;

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

    public Long getApplications_menuid() {
        return applications_menuid;
    }

    public void setApplications_menuid(Long applications_menuid) {
        this.applications_menuid = applications_menuid;
    }

    public Boolean getIsview() {
        return isview;
    }

    public void setIsview(Boolean isview) {
        this.isview = isview;
    }

    public Boolean getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(Boolean isdelete) {
        this.isdelete = isdelete;
    }

    public Boolean getIsmodefy() {
        return ismodefy;
    }

    public void setIsmodefy(Boolean ismodefy) {
        this.ismodefy = ismodefy;
    }

    public Boolean getIsinsert() {
        return isinsert;
    }

    public void setIsinsert(Boolean isinsert) {
        this.isinsert = isinsert;
    }

    public Boolean getIsexport() {
        return isexport;
    }

    public void setIsexport(Boolean isexport) {
        this.isexport = isexport;
    }
}
