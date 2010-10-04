// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.datacite.mds.domain;

import org.datacite.mds.domain.PrefixDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PrefixIntegrationTest_Roo_IntegrationTest {
    
    declare @type: PrefixIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: PrefixIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    @Autowired
    private PrefixDataOnDemand PrefixIntegrationTest.dod;
    
    @Test
    public void PrefixIntegrationTest.testCountPrefixes() {
        org.junit.Assert.assertNotNull("Data on demand for 'Prefix' failed to initialize correctly", dod.getRandomPrefix());
        long count = org.datacite.mds.domain.Prefix.countPrefixes();
        org.junit.Assert.assertTrue("Counter for 'Prefix' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void PrefixIntegrationTest.testFindPrefix() {
        org.datacite.mds.domain.Prefix obj = dod.getRandomPrefix();
        org.junit.Assert.assertNotNull("Data on demand for 'Prefix' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Prefix' failed to provide an identifier", id);
        obj = org.datacite.mds.domain.Prefix.findPrefix(id);
        org.junit.Assert.assertNotNull("Find method for 'Prefix' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Prefix' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void PrefixIntegrationTest.testFindAllPrefixes() {
        org.junit.Assert.assertNotNull("Data on demand for 'Prefix' failed to initialize correctly", dod.getRandomPrefix());
        long count = org.datacite.mds.domain.Prefix.countPrefixes();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Prefix', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.datacite.mds.domain.Prefix> result = org.datacite.mds.domain.Prefix.findAllPrefixes();
        org.junit.Assert.assertNotNull("Find all method for 'Prefix' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Prefix' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void PrefixIntegrationTest.testFindPrefixEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Prefix' failed to initialize correctly", dod.getRandomPrefix());
        long count = org.datacite.mds.domain.Prefix.countPrefixes();
        if (count > 20) count = 20;
        java.util.List<org.datacite.mds.domain.Prefix> result = org.datacite.mds.domain.Prefix.findPrefixEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Prefix' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Prefix' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    @Transactional
    public void PrefixIntegrationTest.testFlush() {
        org.datacite.mds.domain.Prefix obj = dod.getRandomPrefix();
        org.junit.Assert.assertNotNull("Data on demand for 'Prefix' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Prefix' failed to provide an identifier", id);
        obj = org.datacite.mds.domain.Prefix.findPrefix(id);
        org.junit.Assert.assertNotNull("Find method for 'Prefix' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyPrefix(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Prefix' failed to increment on flush directive", obj.getVersion() > currentVersion || !modified);
    }
    
    @Test
    @Transactional
    public void PrefixIntegrationTest.testMerge() {
        org.datacite.mds.domain.Prefix obj = dod.getRandomPrefix();
        org.junit.Assert.assertNotNull("Data on demand for 'Prefix' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Prefix' failed to provide an identifier", id);
        obj = org.datacite.mds.domain.Prefix.findPrefix(id);
        boolean modified =  dod.modifyPrefix(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.merge();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Prefix' failed to increment on merge and flush directive", obj.getVersion() > currentVersion || !modified);
    }
    
    @Test
    @Transactional
    public void PrefixIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Prefix' failed to initialize correctly", dod.getRandomPrefix());
        org.datacite.mds.domain.Prefix obj = dod.getNewTransientPrefix(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Prefix' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Prefix' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Prefix' identifier to no longer be null", obj.getId());
    }
    
    @Test
    @Transactional
    public void PrefixIntegrationTest.testRemove() {
        org.datacite.mds.domain.Prefix obj = dod.getRandomPrefix();
        org.junit.Assert.assertNotNull("Data on demand for 'Prefix' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Prefix' failed to provide an identifier", id);
        obj = org.datacite.mds.domain.Prefix.findPrefix(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Prefix' with identifier '" + id + "'", org.datacite.mds.domain.Prefix.findPrefix(id));
    }
    
}
