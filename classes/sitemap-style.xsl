<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sm="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Sitemap</title>
        <style>
          /* Global Styles */
body {
  font-family: 'Roboto', sans-serif;
  background-color: #f5f5f5;
  color: #333;
  margin: 0;
  padding: 0;
}

/* Header Styles */
h1 {
  font-size: 36px;
  font-weight: 700;
  text-align: center;
  margin-top: 60px;
  margin-bottom: 40px;
  color: #1e88e5;
}

p {
  font-size: 18px;
  text-align: center;
  margin-bottom: 50px;
  color: #616161;
}

/* Table Styles */
table {
  border: none;
  border-spacing: 0;
  border-collapse: collapse;
  background: white;
  border-radius: 6px;
  overflow: hidden;
  max-width: 800px;
  width: 100%;
  margin: 0 auto;
  position: relative;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

table * {
  position: relative;
}

table td, table th {
  padding-left: 8px;
}

table thead tr {
  height: 60px;
  background: #1e88e5;
  font-size: 16px;
  font-weight: 700;
  color: #fff;
}

table tbody tr {
  height: 48px;
  border-bottom: 1px solid #E3F1D5;
  transition: background-color 0.3s ease;
}

table tbody tr:hover {
  background-color: #f0f0f0;
}

table tbody tr:last-child {
  border: 0;
}

table td, table th {
  text-align: left;
}

table td.l {
  text-align: right;
}

table td.c {
  text-align: center;
}

table td.r {
  text-align: center;
}

/* Responsive Styles */
@media screen and (max-width: 35.5em) {
  table {
    display: block;
  }

  table > *, table tr, table td, table th {
    display: block;
  }

  table thead {
    display: none;
  }

  table tbody tr {
    height: auto;
    padding: 8px 0;
  }

  table tbody tr td {
    padding-left: 45%;
    margin-bottom: 12px;
  }

  table tbody tr td:before {
    content: attr(data-label);
    display: inline-block;
    font-weight: bold;
    margin-left: -45%;
    width: 40%;
  }
}
        </style>
      </head>
      <body>
        <h1>Sitemap 🗺️</h1>
        <p>This is a sitemap generated by SEO Engine. 😽</p>
        <table border="1">
          <tr>
            <th>#</th>
            <th>URL</th>
            <th>Priority</th>
            <th>Change Frequency</th>
            <th>Last Modified</th>
          </tr>
          <xsl:for-each select="sm:urlset/sm:url">
            <tr>
              <td><xsl:value-of select="position()"/></td>
              <td><a href="{sm:loc}"><xsl:value-of select="sm:loc"/></a></td>
              <td><xsl:value-of select="sm:priority"/></td>
              <td><xsl:value-of select="sm:changefreq"/></td>
              <td><xsl:value-of select="sm:lastmod"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>