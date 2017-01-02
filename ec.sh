#!/bin/bash

#./ecagent_linux -mod gateway -lpt ${PORT} -zon 61b95a34-1f98-4ea8-ad48-a96d38ba2931 -sst https://61b95a34-1f98-4ea8-ad48-a96d38ba2931.run.aws-usw02-pr.ice.predix.io
./ecagent_linux -aid 191001 -hst wss://ec-chia-gateway-1.run.aws-usw02-pr.ice.predix.io/agent -rht 10.72.6.143 -rpt 5432 -cid chia -csc chia -oa2 https://20564631-a69c-4cc5-83bd-459aa307a307.predix-uaa.run.aws-usw02-pr.ice.predix.io/oauth/token -dur 300 -mod server -hca ${PORT}