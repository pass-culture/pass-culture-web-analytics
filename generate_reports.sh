#!/bin/bash

url="$MATOMO_SERVER_URL/misc/cron/archive.php?token_auth=$MATOMO_TOKEN_AUTH"
curl $url
