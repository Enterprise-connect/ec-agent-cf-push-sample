#!/bin/bash

#./ecagent_linux_sys -mod gateway -lpt ${PORT} -zon <Predix-Zone-ID> -sst <EC-Service-URI> -tkn <admin-token> -dbg

#./ecagent_linux_sys -mod server -aid <VCAP_provided, "id"> -cid <UAA_client_ID> -csc <UAA_client_Secret> -dur 1200 -hst wss://<Predix_Gateway_App_URL>/agent -oa2 https://<predixUAA_URL>/oauth/token -zon <Predix-Zone-ID> -sst <EC-Service-URI> -rht 10.11.12.13 -rpt 5432 -dbg -hca ${PORT}

#./ecagent_linux_sys -mod client -aid <Cannot be the same as Server -aid> -tid <EC Server -aid> -cid <UAA_client_ID> -csc <UAA_client_Secret> -dur 1200 -hst wss://<Predix_Gateway_App_URL>/agent -oa2 https://<predixUAA_URL>/oauth/token -lpt <Defined_by_You> -dbg
