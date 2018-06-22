#!/bin/bash
# Gateway
#./ecagent_linux_sys -mod gateway -lpt ${PORT} \
#-zon <Predix-Zone-ID> -sst <EC-Service-URI ending in predix.io> \
#-tkn <admin-token>

# Server
#./ecagent_linux_sys -mod server -aid <VCAP_provided, "id"> \
#-grp <agent group, Predix-Zone-ID by default> \
#-cid <UAA_client_ID> -csc <UAA_client_Secret> -dur 3000 \
#-oa2 https://<predixUAA_URL>/oauth/token \
#-hst wss://<Predix_Gateway_App_URL>/agent \
#-zon <Predix-Zone-ID> -sst <EC-Service-URI ending in predix.io> \
#-rht 10.11.12.13 -rpt 5432 \
#-hca ${PORT}

# Client
#./ecagent_linux_sys -mod client \
#-aid <Cannot be the same as Server -aid> -tid <EC Server -aid> \
#-grp <agent group, Predix-Zone-ID by default> \
#-cid <UAA_client_ID> -csc <UAA_client_Secret> -dur 3000 \
#-oa2 https://<predixUAA_URL>/oauth/token \
#-hst wss://<Predix_Gateway_App_URL>/agent \
#-lpt <Defined_by_You>
