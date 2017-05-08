#!/bin/bash
echo "Content-type: text/plain\n\n"
echo "Form variables :"
echo ""
eval $(echo "$QUERY_STRING"|awk -F'&' '{for(i=1;i<=NF;i++){print $i}}')
tmp=`busybox httpd -d $id`
echo "Text_Field=$tmp"
tmp=`busybox httpd -d $name`
echo "Radio_Button=$tmp"
echo ""
echo ""
