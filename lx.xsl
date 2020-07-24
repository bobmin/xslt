<?xml version = "1.0"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
      <head>
        <link rel="stylesheet" type="text/css" href="../styles.css"></link>
        <script language="javascript" type="text/javascript" src="../lx.js"></script>
      </head>
  <body>
    <h1>Datenblatt Lx</h1>
    <h2>Partnerinfo</h2>
    <table>
        <tr>
            <th>Name:</th>
            <td><xsl:value-of select="$LX_Name"/></td>
        </tr>
        <tr>
            <th>Code:</th>
            <td><xsl:value-of select="$LX_Code"/></td>
        </tr>
    </table>
    <h2>Beispielzeilen</h2>
    <table border="1">
      <tr>
        <th>#</th>
        <th>Artikel</th>
        <th>Preis</th>
        <th>Währung</th>
      </tr>
      <xsl:for-each select="$LX_Zeilen">
        <tr>
          <td><xsl:value-of select="position()"/></td>
          <td>
            <xsl:call-template name="LX_Artikel">
                <xsl:with-param name="it" select="." />
            </xsl:call-template>
          </td>
          <td>
            <xsl:call-template name="LX_Preis">
                <xsl:with-param name="it" select="." />
            </xsl:call-template>
          </td>
          <td>
            <xsl:call-template name="LX_Waehrung">
                <xsl:with-param name="it" select="." />
            </xsl:call-template>
          </td>
        </tr>
      </xsl:for-each>
    </table>
    <div id="footer">erstellt am <span id="today">10.04.2020</span></div>
    <script>
      document.getElementById("today").innerHTML = get_today();
    </script>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>