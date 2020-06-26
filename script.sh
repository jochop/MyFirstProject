#!/bin/sh

ls *.txt > cicd.log

#echo $GITHUB_SHA


curl --request get https://api.github.com/repos/jochop/MyFirstProject/commits/$GITHUB_SHA | grep -F filename | awk '{print$2}' | cut -d '"-f2' >> cicd.log
