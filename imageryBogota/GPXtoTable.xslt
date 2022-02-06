<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
 xmlns:my="http://www.topografix.com/GPX/1/1"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:template match="/my:gpx">
  <html>
   <body>
    <h2>GroundPoints</h2>
    <table border="1">
     <tr bgcolor="#9acd32">
      <th style="text-align:left">lon lat ele</th>
     </tr>
     <xsl:for-each select="/my:gpx/my:wpt">
      <tr>
       <td>
        <xsl:value-of select="@lon"/>&#160;
        <xsl:value-of select="@lat"/>&#160;
        <xsl:value-of select="my:ele"/>
       </td>
      </tr>
     </xsl:for-each>
    </table>
   </body>
  </html>
 </xsl:template>
</xsl:stylesheet>
