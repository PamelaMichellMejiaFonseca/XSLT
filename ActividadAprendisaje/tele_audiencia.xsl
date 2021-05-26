<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output indent="yes"/>

    <xsl:template match="/">
        <cadena>
            <nom>Un TV</nom>
            <programes>
                <xsl:apply-templates select="//cadena[@nom='Un TV']"/>
            </programes>
        </cadena>
    </xsl:template>

    <xsl:template match="cadena">
        <programa>
            <xsl:attribute name="hora">
                <xsl:value-of select="../../hora"/></xsl:attribute>
            <nom-programa><xsl:value-of select="@nom"/></nom-programa>
            <audiencia><xsl:value-of select="@percentatge"/></audiencia>
        </programa>
    </xsl:template>

</xsl:stylesheet>