<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    
    <xsl:output method="html" indent="yes"/>

    <!-- Template for transforming the root element "students" -->
    <xsl:template match="/students">
        <html>
            <head>
                <title>Student Information</title>
                <link rel="stylesheet" type="text/css" href="student.css"/>
            </head>
            <body>
                <h2>Student Information</h2>
                <table border="1">
                    <tr>
                        <th>Student Number</th>
                        <th>Name</th>
                        <th>Date of Birth</th>
                        <th>Address</th>
                        <th>Marks 1</th>
                        <th>Marks 2</th>
                        <th>Marks 3</th>
                    </tr>
                    <!-- Loop through each student and display their information in table rows -->
                    <xsl:for-each select="student">
                        <tr>
                            <td><xsl:value-of select="sno"/></td>
                            <td><xsl:value-of select="sname"/></td>
                            <td><xsl:value-of select="dob"/></td>
                            <td><xsl:value-of select="address"/></td>
                            <td><xsl:value-of select="m1"/></td>
                            <td><xsl:value-of select="m2"/></td>
                            <td><xsl:value-of select="m3"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
