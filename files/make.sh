for FMT in kml gpx; do
    gpsbabel -i unicsv -o $FMT copts.csv copts.$FMT
done
rm copts.geojson
ogr2ogr -f GeoJSON copts.geojson copts.gpx waypoints

