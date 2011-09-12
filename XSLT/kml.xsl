<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="res xsl"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:res="http://www.w3.org/2005/sparql-results#"
	xmlns="http://purl.org/rss/1.0/">
	<xsl:output method="xml" indent="yes" media-type="application/xml"/>

<xsl:template match="*">
	<kml xmlns="http://www.opengis.net/kml/2.2">
	
<xsl:for-each select="//res:result">
	
	<Placemark>
    <name><xsl:value-of select="res:binding[@name='areaName']/res:literal"/></name>
    <description><xsl:value-of select="res:binding[@name='referenceYear']/res:literal"/> GHI Value: <xsl:value-of select="res:binding[@name='ghi']/res:literal"/></description>
    <Point>
      <coordinates><xsl:value-of select="res:binding[@name='lat']/res:uri"/>,<xsl:value-of select="res:binding[@name='long']/res:uri"/>,0</coordinates>
    </Point>
  </Placemark>

</xsl:for-each>
</kml>

</xsl:template>
	
</xsl:stylesheet>