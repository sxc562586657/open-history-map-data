# mongo history-map --eval "db.dropDatabase()"
mongo "mongodb+srv://cluster0-fv6wy.mongodb.net/history-map"  --username dbAdmin --eval "db.dropDatabase()"
for filename in polygons/*; do mongoimport --uri "mongodb+srv://dbAdmin:199606288Sxc###@cluster0-fv6wy.mongodb.net/history-map?retryWrites=true&w=majority" --collection geojsons --file $filename;  done