# Running a VSTS agent
Using https://github.com/Microsoft/vsts-agent-docker

If the project URL is https://dev.azure.com/FOOBAR/DevOps
than running this command will start and register a VSTS agent:
```
docker run \
  -e VSTS_ACCOUNT=FOOBAR \
  -e VSTS_TOKEN=<TOKEN REGISTERED UNDER YOUR VSTS ACCOUT: profile -> security -> personal access token> \
  -it microsoft/vsts-agent
```
