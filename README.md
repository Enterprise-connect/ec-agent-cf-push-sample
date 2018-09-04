# ec-agent-cf-push
Sample files recommended by the EC Team to be used as templates.

[ec.sh](https://github.com/Enterprise-connect/ec-agent-cf-push-sample/blob/dist/ec.sh) contains templates for each EC agent mode: Gateway, Server and Client. While these are currently in a Unix-centric format, the differences in a Windows implementation would be incredibly minor, and many users will have no issues making the conversion. With that said, if you need assistance with the conversion, the EC team can gladly provide such support until such a time that we have more modular and nuanced examples.

[manifest.yml](https://github.com/Enterprise-connect/ec-agent-cf-push-sample/blob/dist/manifest.yml) can be copied/downloaded and used as-is. The only field one might want to change is the `-name:` field, but this value can be set at the time of `cf push`, by simply saying `cf push a-different-app-name`, which will override the manifest's `app-name`, because the CF CLI always overrides the manifest.