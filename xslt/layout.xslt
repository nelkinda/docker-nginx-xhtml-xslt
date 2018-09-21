<?xml version="1.0"?>
<xsl:transform
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:html="http://www.w3.org/1999/xhtml"
    xmlns="http://www.w3.org/1999/xhtml"
    version="1.0"
>

    <xsl:import href="identity.xslt"/>
    <xsl:import href="html5.xslt"/>

    <xsl:template match="html:head">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <link rel="Stylesheet" href="style.css"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="html:body">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <header><abbr title="Extensible Stylesheet Language Transformation">XSLT</abbr> example</header>
            <main>
                <xsl:apply-templates/>
            </main>
            <footer>© 2019 Nelkinda Software Craft. All rights reserved.</footer>
        </xsl:copy>
    </xsl:template>

</xsl:transform>
