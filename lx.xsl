<?xml version = "1.0"?>
<xsl:stylesheet version = "1.0"
  xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="../styles.css"></link>
        <script language="javascript" type="text/javascript" src="../lx.js"></script>
      </head>
      <body>
        <h1>Datenblatt Lx</h1>
        <p>erstellt von <xsl:value-of select="$LX_AnsprName" /></p>
        <h2>
          <xsl:value-of select="'Partnerinfo '" />
          <span>
            <xsl:attribute name="class">
              <xsl:value-of select="'wertung '" />
              <xsl:choose>
                <xsl:when test="$LX_WertungZahl &gt; 90">
                  <xsl:value-of select="'lxgood'" />
                </xsl:when>
                <xsl:when test="$LX_WertungZahl &gt; 60">
                  <xsl:value-of select="'lxmedium'" />
                </xsl:when>
                <xsl:otherwise>
                  <xsl:value-of select="'lxwrong'" />
                </xsl:otherwise>
              </xsl:choose>
            </xsl:attribute>
            <xsl:value-of select="concat($LX_WertungZahl, '%')" />
          </span>
        </h2>
        <table>
          <tr>
            <th>Name:</th>
            <td>
              <xsl:value-of select="$LX_Name"/>
            </td>
          </tr>
          <tr>
            <th>Code:</th>
            <td>
              <xsl:value-of select="$LX_Code"/>
            </td>
          </tr>
        </table>
        <h2>Beispielzeilen</h2>
        <table id="zeilen">
          <tr>
            <th style="width:10%">#</th>
            <th style="width:50%">Artikel</th>
            <th style="width:30%">Preis</th>
            <th style="width:10%">Währung</th>
          </tr>
          <xsl:for-each select="$LX_Zeilen">
            <tr>
              <td style="text-align: center">
                <xsl:value-of select="position()"/>
              </td>
              <td>
                <xsl:call-template name="LX_Artikel">
                  <xsl:with-param name="it" select="." />
                </xsl:call-template>
              </td>
              <td style="text-align: right">
                <xsl:call-template name="LX_Preis">
                  <xsl:with-param name="it" select="." />
                </xsl:call-template>
              </td>
              <td>
                <xsl:variable name="thisCurrency">
                  <xsl:call-template name="LX_Waehrung">
                    <xsl:with-param name="it" select="." />
                  </xsl:call-template>
                </xsl:variable>
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="$thisCurrency != 'EUR'">
                      <xsl:value-of select="'lxwrong'" />
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="'lxgood'" />
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:value-of select="$thisCurrency"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <div id="footer">erstellt am <span id="today">10.04.2020</span>
        </div>
        <script>
      document.getElementById("today").innerHTML = get_today();
        </script>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>