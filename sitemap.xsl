<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>XML Sitemap</title>
                <style>
                    body { font-family: Arial, sans-serif; margin: 20px; }
                    h1 { color: #2c3e50; }
                    ul { list-style-type: none; padding: 0; }
                    li { margin: 5px 0; }
                    a { color: #2980b9; text-decoration: none; }
                    a:hover { text-decoration: underline; }
                </style>
            </head>
            <body>
                <h1>XML Sitemap</h1>
                <ul>
                    <xsl:for-each select="urlset/url">
                        <li>
                            <a href="{loc}">
                                <xsl:value-of select="loc"/>
                            </a>
                            (Last Updated: <xsl:value-of select="lastmod"/>)
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
