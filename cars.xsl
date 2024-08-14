<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Car Listings</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                    }
                    .car {
                        border: 1px solid #ccc;
                        padding: 10px;
                        margin: 10px;
                        display: inline-block;
                        width: 300px;
                    }
                    img {
                        max-width: 100%;
                    }
                </style>
            </head>
            <body>
                <h1>Car Listings</h1>
                <xsl:for-each select="cars/car">
                    <div class="car">
                        <h2><xsl:value-of select="name"/></h2>
                        <p><strong>Model:</strong> <xsl:value-of select="model"/></p>
                        <p><strong>Price:</strong> $<xsl:value-of select="price"/></p>
                        <p><strong>Description:</strong> <xsl:value-of select="description"/></p>
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="image"/>
                            </xsl:attribute>
                        </img>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
