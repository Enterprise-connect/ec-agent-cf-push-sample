#!/bin/bash

#./ecagent_linux -mod gateway -lpt ${PORT} -zon 156453ff-07e3-4bbc-9d95-6b3482987784 -sst https://156453ff-07e3-4bbc-9d95-6b3482987784.run.asv-pr.ice.predix.io -dbg -tkn YWRtaW46OUVEMTkxdEBJMTU2NDUzZmYtMDdlMy00YmJjLTlkOTUtNmIzNDgyOTg3Nzg0
#./ecagent_linux -aid 191001 -hst wss://ec-chia-gateway-1.run.aws-usw02-pr.ice.predix.io/agent -rht 10.72.6.143 -rpt 5432 -cid chia -csc chia -oa2 https://67c431e9-29e8-49e5-95b2-105660686261.predix-uaa.run.aws-usw02-pr.ice.predix.io/oauth/token -dur 300 -mod server -hca ${PORT} -dbg
./ecagent_linux -mod server -aid 191001 -hst wss://ec-test-gateway-3.run.asv-pr.ice.predix.io/agent -rht postgres-service-pr-gslb.gecis.io -rpt 5432 -cid yasuda -csc yasuda -oa2 https://a04a0b99-2a09-4df1-afe2-f045e4b1649d.predix-uaa.run.asv-pr.ice.predix.io/oauth/token -dur 300 -dbg -hca ${PORT}
