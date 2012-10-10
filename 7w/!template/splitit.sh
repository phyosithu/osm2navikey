#!/bin/sh
CNTRY=setupcountry
# Для работы скрипта необходимо скачать целиком страну в формате osm.pbf
# а также скачать к этой стране границу посредством getpoly.sh
# Разбиваем страну на свои куски обрезая по границам страны
# в одном куске не более 5 500 000 узлов
MN=5500000
# пишем все в каталог -o=./osm файлы poly берем из папки -p=./poly
# -v - выводим отчет о работе 
# -k=areas.kml - создать файл с границами кусков для просмотра в kml

../splitter -o=./osm -p=./poly -mn=$MN -v -k=areas.kml ./osm/$CNTRY.osm.pbf
