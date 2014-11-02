<?xml version="1.0"?>
<recipe>

    <#if includeMdpi>
        <copy from="material-design-icons/${asset?substring(0, asset?index_of('/'))}/drawable-mdpi/${asset?substring(asset?index_of('/') + 1)}_${color}_${dp}.png"
            to="${escapeXmlAttribute(resOut)}/drawable-mdpi/${resName}.png" />
    </#if>

    <#if includeHdpi>
        <copy from="material-design-icons/${asset?substring(0, asset?index_of('/'))}/drawable-hdpi/${asset?substring(asset?index_of('/') + 1)}_${color}_${dp}.png"
              to="${escapeXmlAttribute(resOut)}/drawable-hdpi/${resName}.png" />
    </#if>

    <#if includeXhdpi>
        <copy from="material-design-icons/${asset?substring(0, asset?index_of('/'))}/drawable-xhdpi/${asset?substring(asset?index_of('/') + 1)}_${color}_${dp}.png"
              to="${escapeXmlAttribute(resOut)}/drawable-xhdpi/${resName}.png" />
    </#if>

    <#if includeXxhdpi>
    <copy from="material-design-icons/${asset?substring(0, asset?index_of('/'))}/drawable-xxhdpi/${asset?substring(asset?index_of('/') + 1)}_${color}_${dp}.png"
          to="${escapeXmlAttribute(resOut)}/drawable-xxhdpi/${resName}.png" />
    </#if>

    <#if includeXxxhdpi>
        <copy from="material-design-icons/${asset?substring(0, asset?index_of('/'))}/drawable-xxxhdpi/${asset?substring(asset?index_of('/') + 1)}_${color}_${dp}.png"
              to="${escapeXmlAttribute(resOut)}/drawable-xxxhdpi/${resName}.png" />
    </#if>

</recipe>
