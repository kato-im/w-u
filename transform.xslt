<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" />
    <xsl:template match="/">
    <xsl:apply-templates select="@*|node()"/>
    </xsl:template>

    <xsl:template match="img">
      <a target="_blank">
          <xsl:attribute name="href">
            <xsl:value-of select="@src" />
          </xsl:attribute>
          <xsl:copy>
                <xsl:attribute name="style">
                    <xsl:text>max-width: 100%; border: solid black 0px;</xsl:text>
                </xsl:attribute>
                <xsl:apply-templates select="@*|node()" />
          </xsl:copy>
      </a>
    </xsl:template>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
