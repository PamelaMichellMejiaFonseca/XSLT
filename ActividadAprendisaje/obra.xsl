<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Obres famoses</h2>
                <table border="1">
                    <tr bgcolor="#C2E3F1 ">
                        <th style="text-align:left">Títol</th>
                        <th style="text-align:left">Artista</th>
                    </tr>
                    <xsl:for-each select="exposicio/obra">
                        <tr>
                            <td><xsl:value-of select="titol"/></td>
                            <td><xsl:value-of select="artista"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>