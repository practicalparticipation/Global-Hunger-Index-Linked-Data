<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="res xsl"  xmlns="http://www.w3.org/1999/xhtml" xmlns:res="http://www.w3.org/2005/sparql-results#"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:owl="http://www.w3.org/2002/07/owl#"
	xmlns:ghiqb="http://data.ifpri.org/rdf/ghi/structure/#"
	xmlns:qb="http://purl.org/linked-data/cube#">
	<xsl:output method="xml" indent="yes" media-type="application/xml"/>

<xsl:template match="*">
	<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:rss="http://purl.org/rss/1.0/" xmlns:dc="http://purl.org/dc/elements/1.1/">
	<rss:channel rdf:about="">
	<rss:title>SPARQL Query Results</rss:title>
	<rss:link/>
	<rss:description>Results for SPARQL Query</rss:description>
	</rss:channel>
	
<xsl:for-each select="//res:result">
	<rss:item rdf:about="res:binding[@name='area']/res:uri">
		<rss:link><xsl:value-of select="res:binding[@name='observation']/res:uri"/></rss:link>
		<rss:title><xsl:value-of select="res:binding[@name='referenceYear']/res:literal"/></rss:title>
		<rss:description><xsl:value-of select="res:binding[@name='ghi']/res:literal"/></rss:description>
	</rss:item>
	
</xsl:for-each>
	</rdf:RDF>
</xsl:template>
	
</xsl:stylesheet>