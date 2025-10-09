<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
    <title>Employee Cards</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #a2d2ff, #ffc8dd);
            margin: 20px;
        }

        h1 {
            text-align: center;
            color: #54494B;
        }

        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .card {
            background-color: #91C7B1;
            width: 250px;
            border-radius: 10px;
            box-shadow: #FFFBDB;
            padding: 15px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: #FFFBDB;
        }

        .card h2 {
            color: #B33951;
            margin-bottom: 5px;
            font-family: "Trebuchet MS", sans-serif;
            font-style: italic;
            font-weight: bold;
            letter-spacing: 1px;
        }

        .card p {
            margin: 5px 0;
            font-size: 16px;
        }

        .label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Employee Information</h1>
    <div class="card-container">
        <xsl:for-each select="employees/employee">
            <div class="card">
                <h2><xsl:value-of select="name"/></h2>
                <p><span class="label">ID:</span> <xsl:value-of select="id"/></p>
                <p><span class="label">Department:</span> <xsl:value-of select="department"/></p>
                <p><span class="label">Designation:</span> <xsl:value-of select="designation"/></p>
                <p><span class="label">Email:</span> <xsl:value-of select="email"/></p>
                <p><span class="label">Salary:</span> $<xsl:value-of select="salary"/></p>
            </div>
        </xsl:for-each>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
