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
ec bind-service <any-app-in-your-org-space> <your-ec-service>
```
Get the VCAP of the app with:
```bash
cf env <the-app-you-bound-the-service-to>
```
Find the portion of the VCAP pertaining to Enterprise Connect, and copy that. Paste it into a file somewhere that you can easily reference it, you will need this information repeatedly, and may need it in the future. It is also crucial to pass this along to anyone else who may be maintaining or using your EC setup.
Configure the ec.sh example file using the values found in the VCAP.
Update the "name:" portion of manifest.yml to name the app you are going to push. 
Any EC Agent being pushed to Cloud Foundry will need to be Diego-enabled, please see this short documentation: https://github.com/cloudfoundry-incubator/Diego-Enabler
The following commands will be necessary to gain correct functionality of EC Agents being pushed to Cloud Foundry:
```bash
cf push --no-route && cf enable-diego <app name> && cf map-route <app name> <your domain (run.xxx.xxx.predix.io)> -n <app name or whatever you want the url to say>
```
