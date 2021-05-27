<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
       Notes de Llenguaje de Marques
        ------------------------------
       <xsl:apply-templates select="//credit[nom='Llenguatges de maques']"/>
    </xsl:template>

    <xsl:template match="credit">
        <xsl:value-of select="../nom"/><xsl:text> </xsl:text>
        <xsl:value-of select="../congnom"/>: <xsl:value-of select="nota"/>
        <xsl:text>
        </xsl:text>
    </xsl:template>
</xsl:stylesheet>