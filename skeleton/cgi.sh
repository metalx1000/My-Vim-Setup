#!/bin/bash
echo "Content-type: text/plain\n\n"
echo "Form variables :"
echo ""
eval $(echo "$QUERY_STRING"|awk -F'&' '{for(i=1;i<=NF;i++){print $i}}')
id=`busybox httpd -d $id`
echo "id=$id"
name=`busybox httpd -d $name`
echo "name=$name"
echo ""
echo ""
