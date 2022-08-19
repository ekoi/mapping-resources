<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:param name="values" select="(2, 3, 4)"/>
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="*">
        <output>
            <xsl:value-of select="//person[1]"/>
            <xsl:for-each select="$values">
                <out>
                    <xsl:value-of select=". * 3"/>
                </out>
            </xsl:for-each>
        </output>
    </xsl:template>
</xsl:stylesheet>