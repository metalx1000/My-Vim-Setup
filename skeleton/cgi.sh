#!/bin/sh
echo "Content-type: text/html\n"
#echo "Environment variables"
#env
read QUERY_STRING
eval $(echo "$QUERY_STRING"|awk -F'&' '{for(i=1;i<=NF;i++){print $i}}')
id=`busybox httpd -d $id`
echo "id=$id"
name=`httpd -d $name`
echo "name=$name"
