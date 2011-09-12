<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:owl="http://www.w3.org/2002/07/owl#"
	xmlns:ghiqb="http://data.ifpri.org/rdf/ghi/structure/#">
	<xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes"/>
	
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<xsl:for-each select="//result">
		<rdf:Description rdf:about="http://data.ifpri.org/rdf/ghi/2010/qb/#observation-{substring(binding[name='observation']/uri,-7)}">
			<ghiqb:refArea rdf:resource="{bindings[name='area']}"/>
			<ghiqb:refPeriod rdf:datatype="http://www.w3.org/2001/XMLSchema#date"><xsl:value-of select="bindings[name='period']"/>-01-01</ghiqb:refPeriod>
			<ghiqb:ghi><xsl:value-of select="bindings[name='ghi']"/></ghiqb:ghi>
			<ghiqb:supportingData-pun rdf:datatype="http://www.w3.org/2001/XMLSchema#double"><xsl:value-of select="bindings[name='punValue']"/></ghiqb:supportingData-pun>
			<ghiqb:supporingData-cuw rdf:datatype="http://www.w3.org/2001/XMLSchema#double"><xsl:value-of select="bindings[name='cuwValue']"/></ghiqb:supporingData-cuw>
			<ghiqb:supportingData-cm rdf:datatype="http://www.w3.org/2001/XMLSchema#double"><xsl:value-of select="bindings[name='cmValue']"/></ghiqb:supportingData-cm>
			<qb:dataSet rdf:resource="http://data.ifpri.org/rdf/ghi/2010/qb/#2010-GHI-Report"/>	
		</rdf:Description>
	
</xsl:template>
	
	
</xsl:stylesheet>