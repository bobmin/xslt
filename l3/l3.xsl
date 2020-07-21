<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h1>Datenblatt L2</h1>    
    <h2>Partnerinfo</h2>
    <table>
        <tr>
            <th><span style="color: red;">Name:</span></th>
            <td><xsl:value-of select="l2/@label"/></td>
        </tr>
        <tr>
            <th>Code:</th>
            <td><xsl:value-of select="l2/@ident"/></td>
        </tr>
    </table>
    <h2>Beispielartikel</h2>
    <table border="1">
      <tr>
        <th>Artikel</th>
        <th>Preis</th>
        <th>Währung</th>
      </tr>
      <xsl:for-each select="l2/article">
        <tr>
          <td><xsl:value-of select="@name"/></td>
          <td><xsl:value-of select="@price"/></td>
          <td><xsl:value-of select="@currency"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 