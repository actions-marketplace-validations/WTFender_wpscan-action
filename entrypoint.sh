#!/bin/sh

# $1 URL
# $2 TOKEN
# $3 OPTIONS
# $4 WEBHOOK

#ARGS="-f json --url ${1}"
#[  -n "$2" ] && ARGS="${ARGS} --api-token=${2}"
#[  -n "$3" ] && ARGS="${ARGS} ${3}"
#
#WPSCAN=/usr/local/bundle/bin/wpscan
#
#$WPSCAN --update


#RESULT=$($WPSCAN $ARGS)
RESULT=$(cat /example.json)
RESULT_B64=$(echo $RESULT | base64)

echo ::set-output name=result::$RESULT
echo ::set-output name=resultb64::$RESULT_B64

echo $4
[  -n "$4" ] && python3 /webhook.py
