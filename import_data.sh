mongo history-map --eval "db.dropDatabase()"
for filename in polygons/*; do mongoimport --db history-map --collection geojsons --file $filename;  done