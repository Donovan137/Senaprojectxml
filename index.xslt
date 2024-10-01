<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-public="XSLT-compat"/>

    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title><xsl:value-of select="hotelCasaSol/metaInfo/title"/></title>
                <xsl:for-each select="hotelCasaSol/metaInfo/stylesheets/stylesheet">
                    <link rel="stylesheet" href="{@href}"/>
                </xsl:for-each>
            </head>
            <body>
                <xsl:apply-templates select="hotelCasaSol/body"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="header">
        <header>
            <div class="header-container">
                <h1><xsl:value-of select="h1"/></h1>
                <nav>
                    <ul>
                        <xsl:for-each select="nav/menu/item">
                            <li><a href="{link/@href}"><xsl:value-of select="link"/></a></li>
                        </xsl:for-each>
                    </ul>
                </nav>
                <section class="logo">
                    <img src="{section/image/@src}" alt="{section/image/@alt}"/>
                </section>
                <div class="user-actions">
                    <button id="loginBtn"><xsl:value-of select="div/button[@id='loginBtn