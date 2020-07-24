<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- Daten -->
<xsl:variable name="LX_Name" select="l2/@label" />
<xsl:variable name="LX_Code" select="l2/@ident" />

<xsl:variable name="LX_Zeilen" select="l2/article" />

<xsl:template name="LX_Artikel">
  <xsl:value-of select="@name"/>
</xsl:template>

<xsl:template name="LX_Preis">
  <xsl:value-of select="@price"/>
</xsl:template>

<xsl:template name="LX_Waehrung">
  <xsl:value-of select="@currency"/>
</xsl:template>

<!-- Ausgabe -->
<xsl:include href="../lx.xsl" />

</xsl:stylesheet> 