# Escriba su código aquí
sed 's/,/./g' data.csv > data1.csv
sed 's/;/,/g' data1.csv > data2.csv
tr '/' '-' < data2.csv > data3.csv
sed 's/-\([0-9][0-9]\),/-20\1,/' data3.csv > data4.csv
sed 's/\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9][0-9][0-9]\),/\3-\2-\1,/' data4.csv > data5.csv