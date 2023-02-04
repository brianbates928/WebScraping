#!/bin/bash
f=$2
file=$1
counter=1
while IFS= read line
do
   touch $counter.html
   > $counter.html
   curl $line --output $counter.html
   counter=$((counter+1))
    echo "$line"
done <"$file"
while IFS= read line
do
   touch $counter.html
   > $counter.html
   curl $line --output $counter.html
   counter=$((counter+1))
    echo "$line"
done <"$f"
counttwo=1
 curl https://repo1.maven.org/maven2/org/ccil/cowan/tagsoup/tagsoup/1.2.1/tagsoup-1.2.1.jar --output tagsoup-1.2.1.jar

while [ $counttwo -le 50 ]
do
 
  java -jar tagsoup-1.2.1.jar --files $counttwo.html
    rm $counttwo.html
   counttwo=$((counttwo+1))
 
done
counter=1
if [ "$file" == "albert" ]; then    
    while [ $counter -le 25 ]
    do
    python parser.py $counter.xhtml "albert"
    rm $counter.xhtml
    counter=$((counter+1))
 
    done
    while [ $counter -le 50 ]
    do
    python parser.py $counter.xhtml "riteaid"
    rm $counter.xhtml
    counter=$((counter+1))

    done
else
    counter=25
    while [ $counter -le 50 ]
    do
    python parser.py $counter.xhtml "albert"
      rm $counter.xhtml
    counter=$((counter+1))
  
    done
    counter=1
    while [ $counter -le 25 ]
    do
    python parser.py $counter.xhtml "riteaid"
      rm $counter.xhtml
    counter=$((counter+1))
  
    done
fi