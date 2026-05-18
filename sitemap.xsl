<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html lang="es">
            <head>
                <title>XML Sitemap | Mapa del Sitio</title>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <style>
                    body {
                        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Arial, sans-serif;
                        color: #333;
                        background-color: #f9f9f9;
                        margin: 0;
                        padding: 40px 20px;
                    }
                    .container {
                        max-width: 1000px;
                        margin: 0 auto;
                        background: #fff;
                        padding: 30px;
                        border-radius: 8px;
                        box-shadow: 0 4px 12px rgba(0,0,0,0.05);
                    }
                    h1 {
                        font-size: 24px;
                        color: #111;
                        margin-top: 0;
                        margin-bottom: 10px;
                    }
                    p.desc {
                        color: #666;
                        font-size: 14px;
                        margin-bottom: 30px;
                        line-height: 1.5;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        text-align: left;
                        margin-top: 10px;
                    }
                    th {
                        background-color: #f3f4f6;
                        color: #4b5563;
                        padding: 12px 15px;
                        font-size: 13px;
                        font-weight: 600;
                        border-bottom: 2px solid #e5e7eb;
                    }
                    td {
                        padding: 12px 15px;
                        font-size: 14px;
                        border-bottom: 1px solid #e5e7eb;
                        word-break: break-all;
                    }
                    tr:hover td {
                        background-color: #f9fafb;
                    }
                    a {
                        color: #0066cc;
                        text-decoration: none;
                    }
                    a:hover {
                        text-decoration: underline;
                    }
                    .counter {
                        display: inline-block;
                        background: #e1effe;
                        color: #1e429f;
                        padding: 3px 10px;
                        border-radius: 20px;
                        font-size: 12px;
                        font-weight: 600;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <h1>Mapa del Sitio XML (Sitemap)</h1>
                    <p class="desc">
                        Este es un documento XML generado para que los motores de búsqueda indexen las páginas de forma óptima.
                    </p>
                    <div class="counter">Total URLs: <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/></div>
                    <table>
                        <thead>
                            <tr>
                                <th>Dirección URL</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="sitemap:urlset/sitemap:url">
                                <tr>
                                    <td>
                                        <a href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
