#!/bin/bash
PREVDATE=$(date -r `expr $(date +%s) + 86400` "+%d/%m/%Y")
 
echo $PREVDATE
