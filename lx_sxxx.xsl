<?xml version = "1.0"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    <head>
      <link rel="stylesheet" type="text/css" href="../styles.css"></link>
      <script language="javascript" type="text/javascript" src="../lx.js"></script>
    </head>
  <body>
    <h1>Meplato Lieferantenanbindung</h1>    
    
    <h2>Grundlagen</h2>
    <table>
      <tr>
          <th>Belegdatum:</th>
          <td><xsl:value-of select="$Kopf_DokuDtm"/> (<xsl:value-of select="$Kopf_DokuDtm1"/>)</td>
      </tr>
      <tr>
        <th>Positionen:</th>
        <td><xsl:value-of select="$Sum_Item"/></td>
      </tr>
      <tr>
        <th>Netto:</th>
        <td><xsl:value-of select="$Sum_Netto"/></td>
      </tr>
      <tr>
          <th>Währung:</th>
          <td><xsl:value-of select="$Kopf_Waehrung"/></td>
      </tr>
    </table>

    <h2>Lieferant</h2>
    <table>
      <tr>
          <th>ID:</th>
          <td><xsl:value-of select="$SU_ID"/></td>
      </tr>
      <tr>
          <th>Name:</th>
          <td><xsl:value-of select="$SU_Name"/></td>
      </tr>
    </table>

    <h2>Kunde</h2>
    <table>
      <tr>
          <th>ID:</th>
          <td><xsl:value-of select="$BY_ID"/></td>
      </tr>
      <tr>
          <th>Name:</th>
          <td><xsl:value-of select="$BY_Name"/></td>
      </tr>
    </table>
    <div id="footer">erstellt am <span id="today">10.04.2020</span></div>
    <script>
      document.getElementById("today").innerHTML = get_today();
    </script>
  </body>
  </html>
  </xsl:template>

</xsl:stylesheet>