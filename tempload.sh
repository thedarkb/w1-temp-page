echo "<!doctype html>"
echo "<html>"
echo "<head>"
echo "<title>Server Room Temperatures</title>"
echo "</head><body>"
echo "<h1>Server Room Temperatures</h1><hr>"
echo "<table style=\"margin:auto;border: 1px solid black;\">"
echo "<th style=\"margin:auto;border: 1px solid black;\">Address</th><th style=\"margin:auto;border: 1px solid black;\">Name</th><th style=\"margin:auto;border: 1px solid black;\">Temperature (Celsius)</th>"
senseList=$(ls -a /sys/bus/w1/devices/ | grep "28-*")
for element in $senseList
do
    echo "<tr><td style=\"margin:auto;border: 1px solid black;width: 10%;\">$element</td>"
    echo "<td style=\"margin:auto;border: 1px solid black;width: 10%;\">$(grep $element names.cfg | awk '{print $2}')</td>"
    echo "<td style=\"margin:auto;border: 1px solid black;width: 10%;\">$(grep -o "t=....." /sys/bus/w1/devices/$element/w1_slave | cut -c 3-4)</td></tr><br>"
done
echo "</table>"
echo "<hr><h2>Updated $(date)</h2>"
echo "</body>"
echo "</html>"