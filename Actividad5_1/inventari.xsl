<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/"> <!--  nodo raiz tod lo que esta dentro de este se mostrara.El contenido de
        del elemento de plantilla se especifica cual sera la transformacion que se aplicara a los elementos-->
        <html>
            <head>
                <title>inventari.xml</title>
            </head>
            <body>
                <table border = "1">
                    <caption>Elements</caption>
                    <tr bgcolor="#9acd32">
                        <th style="text-align:left">Nom del producte</th>
                        <th style="text-align:left">Pes en grams</th>
                    </tr> <!-- es la parte dinámica -->
                    <xsl:for-each select="inventari/producte"> <!--El valor del atributo select es una expresion de XPath donde la barra inclinada (/) selecciona subdirectorios -->
                        <!-- Sirve para tomar cada elemento XML del conjunto de nodos de productos del inventario -->
                        <tr> <!-- sub elementos de la tabla -->
                            <td> <!-- nos cogerá el valor del nombre de los productos del fichero de salida -->
                                <xsl:value-of select="nom"/>
                            </td>
                            <td> <!--  nos cogerá el valor del peso que tiene cada producto del fichero de salida -->
                                <xsl:value-of select="pes"/>
                            </td>
                        </tr>
                    </xsl:for-each> <!-- cierre del for-each  -->
            </table>
        </body>
    </html>
</xsl:template>
        </xsl:stylesheet>