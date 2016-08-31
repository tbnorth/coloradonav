for FMT in kml gpx; do
    gpsbabel -i unicsv -o $FMT copts.csv copts.$FMT
done
rm copts.geojson
ogr2ogr -f GeoJSON copts.geojson copts.gpx waypoints
qgis --snapshot co0Capture.png --width 1024 qgismap.qgs
qgis --snapshot co1Capture.png --width 1024 \
  --extent -11808392.66,4787802.11,-11799300.21,4793904.79 \
  qgismap.qgs

