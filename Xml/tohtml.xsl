<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
     <html>
     <head>
      <style>
      body{
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        background:linear-gradient(90deg, #ff7e5f, #feb47b);
        font-family:'Courier New', Courier, monospace;
      }
      .con1{
        border: 2px solid black;
        border-radius: 10px;
        padding: 10px;
         background:linear-gradient(90deg,rgb(43, 198, 188),rgb(80, 144, 208));
         box-shadow: 0 10px 10px rgba(0, 0, 0, 0.5);
      }
      </style>
     </head>
      <body>
        <h1>TITLE OF BOOKS FROM BOOKSTORE</h1>
        <h5 style="font-weight: bold; color: black;">This file is Transformed from xml to html.original file Books-xml<br/>
        conatins books information we filtered the title of books from it.<br/>
        The file is transformed using XSLT and the output is in HTML format.<br/>
        </h5>
        <div class="con1">
            <xsl:for-each select="bookstore/row/column/book">
                <h4><xsl:value-of select="title"/></h4>
                <hr/>
            </xsl:for-each>
        </div>
      </body>
     </html>
    </xsl:template>
</xsl:stylesheet>