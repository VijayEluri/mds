// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.datacite.mds.domain;

import java.lang.String;

privileged aspect Metadata_Roo_ToString {
    
    public String Metadata.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Xml: ").append(java.util.Arrays.toString(getXml())).append(", ");
        sb.append("MetadataVersion: ").append(getMetadataVersion()).append(", ");
        sb.append("LastUpdated: ").append(getLastUpdated()).append(", ");
        sb.append("Dataset: ").append(getDataset());
        return sb.toString();
    }
    
}
