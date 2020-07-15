<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h1>Datenblatt L1</h1>
    <h2>Partnerinfo</h2>
    <table>
        <tr>
            <th>Name:</th>
            <td><xsl:value-of select="l1/name"/></td>
        </tr>
        <tr>
            <th>Code:</th>
            <td><xsl:value-of select="l1/number"/></td>
        </tr>
    </table>
    <h2>Beispielartikel</h2>
    <table border="1">
      <tr>
        <th>Artikel</th>
        <th>Preis</th>
        <th>Währung</th>
      </tr>
      <xsl:for-each select="l1/items/item">
        <tr>
          <td><xsl:value-of select="label"/></td>
          <td><xsl:value-of select="price"/></td>
          <td><xsl:value-of select="currency"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 