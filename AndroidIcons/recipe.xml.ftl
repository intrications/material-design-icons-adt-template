<?xml version="1.0"?>
<recipe>

	<copy from="assets/${color}/mdpi/ic_action_${asset}.png"
            to="${escapeXmlAttribute(resOut)}/drawable-mdpi/${resName}.png" />
    <copy from="assets/${color}/hdpi/ic_action_${asset}.png"
            to="${escapeXmlAttribute(resOut)}/drawable-hdpi/${resName}.png" />
    <copy from="assets/${color}/xhdpi/ic_action_${asset}.png"
            to="${escapeXmlAttribute(resOut)}/drawable-xhdpi/${resName}.png" />
    <copy from="assets/${color}/xxhdpi/ic_action_${asset}.png"
            to="${escapeXmlAttribute(resOut)}/drawable-xxhdpi/${resName}.png" />     
    <#if includeLdpi>
        <copy from="assets/${color}/ldpi/ic_action_${asset}.png"
            to="${escapeXmlAttribute(resOut)}/drawable-ldpi/${resName}.png" />
    </#if>   
            
</recipe>
