<?xml version="1.0"?>
<recipe>

    <#if includeLdpi>
        <copy from="assets/${color}/ldpi/ic_action_${asset}.png"
            to="${escapeXmlAttribute(resOut)}/drawable-ldpi/${resName}.png" />
    </#if>  
    <#if includeMdpi>
        <copy from="assets/${color}/mdpi/ic_action_${asset}.png"
            to="${escapeXmlAttribute(resOut)}/drawable-mdpi/${resName}.png" />
    </#if>
    <#if includeHdpi>
        <copy from="assets/${color}/hdpi/ic_action_${asset}.png"
            to="${escapeXmlAttribute(resOut)}/drawable-hdpi/${resName}.png" />
    </#if>
    <#if includeXhdpi>
        <copy from="assets/${color}/xhdpi/ic_action_${asset}.png"
            to="${escapeXmlAttribute(resOut)}/drawable-xhdpi/${resName}.png" />
    </#if>
    <#if includeXxhdpi>
        <copy from="assets/${color}/xxhdpi/ic_action_${asset}.png"
            to="${escapeXmlAttribute(resOut)}/drawable-xxhdpi/${resName}.png" />     
    </#if> 
            
</recipe>
