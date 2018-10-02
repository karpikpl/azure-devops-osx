# How to run
`dotnet run --project DevOpsHOL`

# Run with watch
`dotnet watch -p DevOpsHOL.sln run -p DevOpsHOL`

# Versioning builds
`dotnet build DevOpsHOL.sln -c Release /p:Version=6.6.6.6`

## during the build:
```
dotnet build --configuration $(buildConfiguration)
dotnet test *.Tests --configuration $(buildConfiguration) --logger trx
dotnet publish --configuration $(buildConfiguration) --output $BUILD_ARTIFACTSTAGINGDIRECTORY /p:Version=1.0.0.$(Build.BuildId)
```
Using BuildId works because it's a number small enough to be accepted by .Net as version number
