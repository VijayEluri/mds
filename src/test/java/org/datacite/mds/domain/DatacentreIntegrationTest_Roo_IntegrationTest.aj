// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.datacite.mds.domain;

import org.datacite.mds.domain.DatacentreDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DatacentreIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DatacentreIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DatacentreIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    @Autowired
    private DatacentreDataOnDemand DatacentreIntegrationTest.dod;
    
    @Test
    public void DatacentreIntegrationTest.testCountDatacentres() {
        org.junit.Assert.assertNotNull("Data on demand for 'Datacentre' failed to initialize correctly", dod.getRandomDatacentre());
        long count = org.datacite.mds.domain.Datacentre.countDatacentres();
        org.junit.Assert.assertTrue("Counter for 'Datacentre' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DatacentreIntegrationTest.testFindDatacentre() {
        org.datacite.mds.domain.Datacentre obj = dod.getRandomDatacentre();
        org.junit.Assert.assertNotNull("Data on demand for 'Datacentre' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Datacentre' failed to provide an identifier", id);
        obj = org.datacite.mds.domain.Datacentre.findDatacentre(id);
        org.junit.Assert.assertNotNull("Find method for 'Datacentre' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Datacentre' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void DatacentreIntegrationTest.testFindAllDatacentres() {
        org.junit.Assert.assertNotNull("Data on demand for 'Datacentre' failed to initialize correctly", dod.getRandomDatacentre());
        long count = org.datacite.mds.domain.Datacentre.countDatacentres();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Datacentre', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.datacite.mds.domain.Datacentre> result = org.datacite.mds.domain.Datacentre.findAllDatacentres();
        org.junit.Assert.assertNotNull("Find all method for 'Datacentre' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Datacentre' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DatacentreIntegrationTest.testFindDatacentreEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Datacentre' failed to initialize correctly", dod.getRandomDatacentre());
        long count = org.datacite.mds.domain.Datacentre.countDatacentres();
        if (count > 20) count = 20;
        java.util.List<org.datacite.mds.domain.Datacentre> result = org.datacite.mds.domain.Datacentre.findDatacentreEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Datacentre' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Datacentre' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    @Transactional
    public void DatacentreIntegrationTest.testFlush() {
        org.datacite.mds.domain.Datacentre obj = dod.getRandomDatacentre();
        org.junit.Assert.assertNotNull("Data on demand for 'Datacentre' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Datacentre' failed to provide an identifier", id);
        obj = org.datacite.mds.domain.Datacentre.findDatacentre(id);
        org.junit.Assert.assertNotNull("Find method for 'Datacentre' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyDatacentre(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Datacentre' failed to increment on flush directive", obj.getVersion() > currentVersion || !modified);
    }
    
    @Test
    @Transactional
    public void DatacentreIntegrationTest.testMerge() {
        org.datacite.mds.domain.Datacentre obj = dod.getRandomDatacentre();
        org.junit.Assert.assertNotNull("Data on demand for 'Datacentre' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Datacentre' failed to provide an identifier", id);
        obj = org.datacite.mds.domain.Datacentre.findDatacentre(id);
        boolean modified =  dod.modifyDatacentre(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.merge();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Datacentre' failed to increment on merge and flush directive", obj.getVersion() > currentVersion || !modified);
    }
    
    @Test
    @Transactional
    public void DatacentreIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Datacentre' failed to initialize correctly", dod.getRandomDatacentre());
        org.datacite.mds.domain.Datacentre obj = dod.getNewTransientDatacentre(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Datacentre' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Datacentre' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Datacentre' identifier to no longer be null", obj.getId());
    }
    
    @Test
    @Transactional
    public void DatacentreIntegrationTest.testRemove() {
        org.datacite.mds.domain.Datacentre obj = dod.getRandomDatacentre();
        org.junit.Assert.assertNotNull("Data on demand for 'Datacentre' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Datacentre' failed to provide an identifier", id);
        obj = org.datacite.mds.domain.Datacentre.findDatacentre(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Datacentre' with identifier '" + id + "'", org.datacite.mds.domain.Datacentre.findDatacentre(id));
    }
    
}
