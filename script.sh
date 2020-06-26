#!/bin/sh

curl --request get https://api.github.com/repos/jochop/MyFirstProject/commits/$GITHUB_SHA > cicd.txt
cat cicd.txt | grep -F filename | awk '{print$2}' | cut -d '"' -f 2 >> cicd.log
