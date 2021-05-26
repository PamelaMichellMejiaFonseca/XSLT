<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body style="font-family: 'Comic Sans MS'; font-weight: bold;">
                <h1 style="color:red;">Llista en ordre descendent</h1>
                <ol>
                    <xsl:for-each select="cataleg/llibre/autors/autor">
                        <xsl:sort order="descending" select="."/>
                        <li style="color:blue;">
                            <xsl:value-of select="."/>
                            <span style="color:black; white-space:nowrap;">, Any de naixement: </span>
                            <span style="color:blue; white-space:nowrap;">   <xsl:value-of select="./@naixement"/></span>
                        </li>
                    </xsl:for-each>

                </ol>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>


