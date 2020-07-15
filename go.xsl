<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" />
    <xsl:template match="/">
        <xsl:element name="go">
            
            <!-- Belegkopf -->
            <xsl:attribute name="num">
                <xsl:value-of select="html/body/table[1]/tr[2]/td" />
            </xsl:attribute>
            <xsl:attribute name="txt">
                <xsl:value-of select="html/body/table[1]/tr[1]/td" />
            </xsl:attribute>

            <!-- Belegzeilen -->
            <xsl:for-each select="html/body/table[2]/tr[position()>1]">
                <xsl:element name="pos">
                    <xsl:element name="pna">
                        <xsl:value-of select="td[1]" />
                    </xsl:element>
                    <xsl:element name="ppr">
                        <xsl:attribute name="cur">
                            <xsl:value-of select="td[3]" />
                        </xsl:attribute>        
                        <xsl:value-of select="td[2]" />
                    </xsl:element>
                </xsl:element>
            </xsl:for-each>

        </xsl:element>
    </xsl:template>

</xsl:stylesheet> 