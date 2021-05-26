<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>

                <table border="2" style="text-align:center" >
                    <tr><th colspan="4" style="text-align:center">Llibreria:<xsl:value-of select="comanda/llibreria"/> </th></tr>  <tr bgcolor="#f08080">
                    <th style="text-align:center">Data Comanda</th>
                    <th style="text-align:center">Autor</th>
                    <th style="text-align:center">Titol</th>
                    <th style="text-align:center">Quantittat</th>
                </tr>
                    <tr><td><xsl:value-of select="comanda/llibreria/@data"/></td></tr>
                    <xsl:for-each select="comanda/llibre">
                        <tr>
                            <td>25-11-2019</td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="titol"/></td>
                            <td><xsl:value-of select="@quantitat"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
