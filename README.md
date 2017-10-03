# ec-agent-cf-push
 - A good example directory for pushing EC Agents to Cloud Foundry

## Usage
Retrieve the Linux binary from https://github.com/Enterprise-connect/ec-sdk/tree/dist/dist and extract with:
```bash
tar -xvzf ./path/to/ec-sdk/dist/ecagent_linux_sys.tar.gz
cp ~/path/to/the/unzipped/ecagent_linux_sys ./
```
Your EC Service should be bound to an app, if it is not already, please do so with:
```bash
cf bind-service <any-app-in-your-org-space> <your-ec-service>
```
Get the VCAP of the app with:
```bash
cf env <the-app-you-bound-the-service-to>
```

1. Find the portion of the VCAP pertaining to Enterprise Connect, and copy that. Paste it into a file somewhere that you can easily reference it, you will need this information repeatedly, and may need it in the future. It is also crucial to pass this along to anyone else who may be maintaining or using your EC setup. <br/><br/>
2. Please visit the UAA Instance you used during the creation of the service. If you have not already done so, please create a client and change the Authorizations to include "client_credentials" and "refresh_token". In the ***Authorities*** field, please add the oauth scope for the Service which you can find on the VCAP. It should look something like: enterprise-connect.zones.xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx.user <br/><br/>
3. Configure the ec.sh example file using the values found in the VCAP, along with the UAA Client_ID and Secret (-cid and -csc, respectively). <br/><br/>
4. Update the "name:" portion of manifest.yml to name the app you are going to push. Be sure the corresponding Agent's script isn't commented-out when you go to push it. ***Note: the EC Agent Client will never be pushed to Predix in this way, it would need to be embedded in a separate app, and it only appears here for reference***<br/> <br/>
5. Any EC Agent being pushed to Cloud Foundry will need to be Diego-enabled, please see this short documentation: https://github.com/cloudfoundry-incubator/Diego-Enabler. This step is not optional, run both commands found at the bottom of that GitHub page - even if the first one fails. <br/> <br/>
The following commands will be necessary to gain correct functionality of EC Agents being pushed to Cloud Foundry, but ***please ensure you have deleted any routes you plan on using for your Agent app prior to these steps, failure to do so will result in inconsistent connectivity***: <br/>
```bash
cf push --no-route 
cf enable-diego <app name>
cf map-route <app name> <run.your.domain.predix.io> -n <app/route name>
```
#### As mentioned, the route used in the *map-route* step needs to be created in that step. Simply deleting a route does not delete the associate route, unless the -r flag is added. You can run *cf routes* in your org/space to determine if the route was indeed deleted.
