#Escriba su código aquí
cat *.csv > datos1.csv
sed 's/,/./g' datos1.csv > datos2.csv
sed 's/;/,/g' datos2.csv > datos3.csv
tr '/' '-' < datos3.csv > datos4.csv
sed 's/-\([0-9][0-9]\),/-20\1,/' datos4.csv > datos5.csv
sed 's/\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9][0-9][0-9]\),/\3-\2-\1,/' datos5.csv > datos6.csv
sed 's/,\s/,\\N/g' datos6.csv > datos7.csv
sed 's/,,/,\\N,/g' datos7.csv > datos8.csv
sed 's/,N,/,\\N,/g' datos8.csv > datos9.csv
sed 's/,/./4' datos9.csv > datos10.csv
sed -e '/\N/d' datos10.csv > datafinal.csv
cat datafinal.csv
rm datos*.csv
