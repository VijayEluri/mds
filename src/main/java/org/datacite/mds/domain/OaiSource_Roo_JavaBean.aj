// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.datacite.mds.domain;

import java.lang.String;
import java.util.Date;

privileged aspect OaiSource_Roo_JavaBean {
    
    public String OaiSource.getUrl() {
        return this.url;
    }
    
    public void OaiSource.setUrl(String url) {
        this.url = url;
    }
    
    public String OaiSource.getOwner() {
        return this.owner;
    }
    
    public void OaiSource.setOwner(String owner) {
        this.owner = owner;
    }
    
    public Date OaiSource.getLastHarvest() {
        return this.lastHarvest;
    }
    
    public void OaiSource.setLastHarvest(Date lastHarvest) {
        this.lastHarvest = lastHarvest;
    }
    
    public String OaiSource.getLastStatus() {
        return this.lastStatus;
    }
    
    public void OaiSource.setLastStatus(String lastStatus) {
        this.lastStatus = lastStatus;
    }
    
}
