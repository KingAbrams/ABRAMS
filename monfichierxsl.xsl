<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                xmlns:foaf="http://xmlns.com/foaf/0.1/">

  <xsl:template match="/">
    <html>
      <head>
        <title>FOAF RDF Visualisation</title>
      </head>
      <body>
        <h1>FOAF RDF Visualisation</h1>

        <xsl:apply-templates select="//rdf:Description"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="rdf:Description">
    <div>
      <h2>Personne</h2>
      <p><strong>Nom :</strong> <xsl:value-of select="foaf:lastName"/>, <xsl:value-of select="foaf:firstName"/></p>
      <p><strong>Âge :</strong> <xsl:value-of select="foaf:age"/></p>
      <p><strong>Image :</strong> <img src="{foaf:img/@rdf:resource}" alt="Photo"/></p>
      <p><strong>Étudie à :</strong> <xsl:value-of select="foaf:studyAt"/></p>
      <p><strong>Page d'accueil :</strong> <a href="{foaf:homepage/@rdf:resource}">Page d'accueil</a></p>
      <p><strong>Page créée :</strong> <a href="{foaf:made/@rdf:resource}">Page créée</a></p>
    </div>
  </xsl:template>

</xsl:stylesheet>
