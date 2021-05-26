<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <ul>
                    <xsl:for-each select="inventari/producte">
                        <li>Codi: <xsl:value-of select="./codi"/>
                  <ul>
                <li>Nom producte: <xsl:value-of select="nom"/>
                    <xsl:text>---</xsl:text>
                    <xsl:value-of select="pes"/>
                    <xsl:value-of select="pes/@unitat"/></li>
                  </ul>
                   </li>
                    </xsl:for-each>

        </ul>
    </body>
        </html>
    </xsl:template>
</xsl:stylesheet>