// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.datacite.mds.domain;

import java.lang.Boolean;
import java.lang.Integer;
import java.lang.String;
import java.util.Set;
import org.datacite.mds.domain.Allocator;
import org.datacite.mds.domain.Prefix;

privileged aspect Datacentre_Roo_JavaBean {
    
    public String Datacentre.getSymbol() {
        return this.symbol;
    }
    
    public void Datacentre.setSymbol(String symbol) {
        this.symbol = symbol;
    }
    
    public String Datacentre.getPassword() {
        return this.password;
    }
    
    public void Datacentre.setPassword(String password) {
        this.password = password;
    }
    
    public String Datacentre.getName() {
        return this.name;
    }
    
    public void Datacentre.setName(String name) {
        this.name = name;
    }
    
    public String Datacentre.getContactName() {
        return this.contactName;
    }
    
    public void Datacentre.setContactName(String contactName) {
        this.contactName = contactName;
    }
    
    public String Datacentre.getContactEmail() {
        return this.contactEmail;
    }
    
    public void Datacentre.setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }
    
    public Integer Datacentre.getDoiQuotaAllowed() {
        return this.doiQuotaAllowed;
    }
    
    public void Datacentre.setDoiQuotaAllowed(Integer doiQuotaAllowed) {
        this.doiQuotaAllowed = doiQuotaAllowed;
    }
    
    public Integer Datacentre.getDoiQuotaUsed() {
        return this.doiQuotaUsed;
    }
    
    public void Datacentre.setDoiQuotaUsed(Integer doiQuotaUsed) {
        this.doiQuotaUsed = doiQuotaUsed;
    }
    
    public Boolean Datacentre.getIsActive() {
        return this.isActive;
    }
    
    public void Datacentre.setIsActive(Boolean isActive) {
        this.isActive = isActive;
    }
    
    public String Datacentre.getDomains() {
        return this.domains;
    }
    
    public void Datacentre.setDomains(String domains) {
        this.domains = domains;
    }
    
    public String Datacentre.getComments() {
        return this.comments;
    }
    
    public void Datacentre.setComments(String comments) {
        this.comments = comments;
    }
    
    public Allocator Datacentre.getAllocator() {
        return this.allocator;
    }
    
    public void Datacentre.setAllocator(Allocator allocator) {
        this.allocator = allocator;
    }
    
    public Set<Prefix> Datacentre.getPrefixes() {
        return this.prefixes;
    }
    
    public void Datacentre.setPrefixes(Set<Prefix> prefixes) {
        this.prefixes = prefixes;
    }
    
}
