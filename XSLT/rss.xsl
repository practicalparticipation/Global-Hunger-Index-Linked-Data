<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="res xsl"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:res="http://www.w3.org/2005/sparql-results#"
	xmlns="http://purl.org/rss/1.0/">
	<xsl:output method="xml" indent="yes" media-type="application/xml"/>

<xsl:template match="*">
	<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:rss="http://purl.org/rss/1.0/" xmlns:dc="http://purl.org/dc/elements/1.1/">
	<channel rdf:about="">
	<title>SPARQL Query Results</title>
	<link/>
	<description>Results for SPARQL Query</description>
	</channel>
	
<xsl:for-each select="//res:result">
	<item rdf:about="{res:binding[@name='area']/res:uri}">
		<link><xsl:value-of select="res:binding[@name='area']/res:uri"/></link>
		<title><xsl:value-of select="res:binding[@name='referenceYear']/res:literal"/></title>
		<description><xsl:value-of select="res:binding[@name='ghi']/res:literal"/></description>
	</item>
	
</xsl:for-each>
	</rdf:RDF>
</xsl:template>
	
</xsl:stylesheet>