<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Mi titulo</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                       <th>titulo</th>
                        <th>artista</th>
                    </tr> <!-- el nos recogera todos los elementos que podramos dentro-->
                    <xsl:for-each select="catagolo/cd">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="artista"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>