#INPUT = IP2LOCATION-LITE-DB9.csv
echo "Indicate which country info you want to extract (E.G.: 'US', 'MX', 'JP')"
read tofile
echo "Indicate the paht of the file to query"
read sourceFile
rm -f $tofile".csv"
echo "creating: "$tofile".csv"
while IFS=, read -r iprangelow iprangeup countryCode countryName state cityName; do  
  if [[ "$countryCode" == "$tofile" -a "$state" != "-"]] then
    echo "$iprangelow,$iprangeup,$countryCode,$countryName,$state,$cityName"
    echo "$iprangelow,$iprangeup,$countryCode,$countryName,$state,$cityName"  >> $tofile".csv" #add each iteration result to the file
  fi
done < $sourceFile