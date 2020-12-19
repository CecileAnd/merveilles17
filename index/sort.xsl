<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:tei="http://www.tei-c.org/ns/1.0" 
>
  <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="tei:listPerson">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates>
        <xsl:sort select="tei:name"/>
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>
</xsl:transform>
