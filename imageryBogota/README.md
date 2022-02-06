# Bogota Imagery
Descripción de cómo generar fotos aereas.

* Revisar la zona a volar, y escoger las rutas donde debe pasar el drone.
* Tomar fotos don el drone a una altura superior de 60 metros (e inferior de 120 metros, por ser categoría B).
* Dirigir la cámara hacia abajo, hacia [nadir](https://es.wikipedia.org/wiki/Nadir).
* El intervalo de fotos puede ser de 2 segundos o inferior (si lo permite el drone) para sobrelapar fotos.
* Si se vuela bajo, desplazar el drone lentamente para que las imágenes se sobrelapen bastante y se pueda generar una mejor ortofoto.
* Seleccionar puntos de control en terreno (Ground Control Points - GCP), de pueden ser:
  * Cambios de pasto a cemento.
  * Tela con cuadros blancos y negros.
  * Spray de colores blanco y negro
* Capturar la ubicación de los puntos de control por medio del GPS tracker.
  * Waypoint. Dejar al menos 1 minuto en cada waypoint.
  * Tomar foto del GPS en el piso para recordar bien la ubicación del punto.
* Exportar los puntos, para traerlos al computador.
* Convertir el GPX (que es un XML) en una tabla para convertir las coordenadas en una tabla.
  * Usar el [archivo XSLT](https://github.com/MaptimeBogota/BogotaImagery/blob/main/GPXtoTable.xslt) que está en este proyecto.
  * Abrir el GPX como texto.
  * Usar una página que haga la transformación de XML con XSLT, como https://www.w3schools.com/xml/tryxslt.asp?xmlfile=cdcatalog&xsltfile=cdcatalog
  * Copiar la tabla generada para crear el archivo de GCP.
* Convertir las coordenadas WGS84 a UTM.
  * Usar aplicación http://www.zonums.com/online/coords/cotrans.php?module=13
  * Verificar que el output sea similar al archivo de muestra de aquí (latitud, longitud).
* Crear un archivo de ground points, llamado gcp_list.txt
  * Tipo: WGS84 UTM 18N.
  * Cada línea del archivo es un ground point. Copiarlos de la página que convirtió el GPX en una tabla.
* Para la posición del punto en la imagen se puede utilizar https://yangcha.github.io/iview/iview.html
* El formato del archivo es:

```
<projection>
geo_x geo_y geo_z im_x im_y image_name
```

* Un ejemplo de contenido es:

```
WGS84 UTM 18N
601667.355 514292.805 2565.699219 1376 49 DJI_0039.JPG 
601667.355 514292.805 2565.699219 1414 708 DJI_0040.JPG 
601667.355 514292.805 2565.699219 1358 873 DJI_0041.JPG 
601594.878 514240.089 2570.807129 2683 317 DJI_0022.JPG 
601594.878 514240.089 2570.807129 2622 1549 DJI_0024.JPG 
601594.878 514240.089 2570.807129 2566 249 DJI_0029.JPG 
601614.176 514328.113 2561.790283 2187 1750 DJI_0191.JPG 
601614.176 514328.113 2561.790283 2839 2104 DJI_0195.JPG 
601614.176 514328.113 2561.790283 270 508 DJI_0227.JPG 
601548.690 514187.517 2568.310791 2169 1387 DJI_0930.JPG 
601548.690 514187.517 2568.310791 2465 590 DJI_0989.JPG 
601548.690 514187.517 2568.310791 2931 1754 DJI_0995.JPG 
601703.517 514121.165 2572.380615 2857 1189 DJI_0005.JPG 
601703.517 514121.165 2572.380615 1719 1113 DJI_0978.JPG 
601703.517 514121.165 2572.380615 2017 1743 DJI_0981.JPG 
```

Mas información en:

* https://docs.opendronemap.org/es/gcp/
* https://github.com/mapillary/OpenSfM/blob/main/doc/source/gcp.rst
* Múltiples sistemas de coordenadas https://coordinates-converter.com/en/decimal/4.651765,-74.083976?karte=OpenStreetMap&zoom=18
