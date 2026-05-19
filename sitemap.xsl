<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html lang="es">
            <head>
                <title>Haciendo Rap Juntxs | XML Sitemap</title>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <style>
                    /* Estilos Base - Modo Oscuro Radical */
                    body {
                        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
                        color: #e0e0e0;
                        background-color: #0a0a0a;
                        margin: 0;
                        padding: 50px 20px;
                        background-image: radial-gradient(circle at 50% 50%, #161616 0%, #0a0a0a 100%);
                    }
                    
                    .container {
                        max-width: 1000px;
                        margin: 0 auto;
                        background: #121212;
                        padding: 40px;
                        border-radius: 12px;
                        border: 1px solid #222;
                        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.7);
                    }
                    
                    h1 {
                        font-size: 28px;
                        color: #fff;
                        margin-top: 0;
                        margin-bottom: 12px;
                        font-weight: 800;
                        letter-spacing: -0.5px;
                    }
                    
                    p.desc {
                        color: #888;
                        font-size: 14px;
                        margin-bottom: 35px;
                        line-height: 1.6;
                    }
                    
                    .counter {
                        display: inline-block;
                        background: rgba(255, 69, 0, 0.1);
                        color: #ff4500;
                        padding: 6px 16px;
                        border-radius: 50px;
                        font-size: 13px;
                        font-weight: 700;
                        border: 1px solid rgba(255, 69, 0, 0.3);
                        margin-bottom: 20px;
                    }
                    
                    table {
                        width: 100%;
                        border-collapse: separate;
                        border-spacing: 0;
                        text-align: left;
                        margin-top: 10px;
                        border-radius: 8px;
                        overflow: hidden;
                        border: 1px solid #1f1f1f;
                    }
                    
                    th {
                        background-color: #1a1a1a;
                        color: #aaa;
                        padding: 16px 20px;
                        font-size: 12px;
                        font-weight: 700;
                        text-transform: uppercase;
                        border-bottom: 2px solid #252525;
                    }
                    
                    td {
                        padding: 16px 20px;
                        font-size: 14px;
                        background-color: #121212;
                        border-bottom: 1px solid #1f1f1f;
                        word-break: break-all;
                        transition: all 0.2s ease;
                    }
                    
                    tr:hover td {
                        background-color: #181818;
                        color: #fff;
                    }
                    
                    td a {
                        color: #ff4500;
                        text-decoration: none;
                        font-weight: 500;
                        transition: all 0.2s ease;
                        display: inline-block;
                    }
                    
                    tr:hover td a {
                        color: #ff6324;
                        transform: translateX(4px);
                    }
                    
                    td a::before {
                        content: "↪ ";
                        color: #444;
                        margin-right: 6px;
                    }

                    /* FIRMA DE MARCA ABAJO DEL TODO */
                    .sitemap-footer {
                        margin-top: 40px;
                        padding-top: 20px;
                        border-top: 1px solid #1f1f1f;
                        text-align: center;
                    }

                    .sitemap-footer img {
                        height: 32px;
                        width: auto;
                        opacity: 0.4;
                        transition: all 0.3s ease;
                    }

                    .sitemap-footer img:hover {
                        opacity: 0.9;
                        filter: drop-shadow(0 0 8px rgba(255, 255, 255, 0.2));
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <h1>Indexación de Haciendo Rap Juntxs</h1>
                    <p class="desc">
                        Este mapa del sitio está optimizado estructuralmente para motores de búsqueda.<br/>
                        Hacé clic sobre cualquiera de las rutas de la lista para navegar el archivo territorial.
                    </p>
                    
                    <div class="counter">
                        🟢 TOTAL URLS DETECTADAS: <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/>
                    </div>
                    
                    <table>
                        <thead>
                            <tr>
                                <th>Rutas de Navegación del Servidor</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="sitemap:urlset/sitemap:url">
                                <tr>
                                    <td>
                                        <a href="{sitemap:loc}">
                                            <xsl:value-of select="sitemap:loc"/>
                                        </a>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>

                    <footer class="sitemap-footer">
                        <img src="/cursor.png" alt="Diseño y Desarrollo Digital"/>
                    </footer>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
