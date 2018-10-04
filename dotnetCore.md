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

## Testing with dotnet core
There's a limitation on dotnet core - it cannot run multiple projects in one go.
There's a known issue https://github.com/Microsoft/vstest/issues/705
People solve it by using powershell and looping through test projects.

### Filtering tests in one(!) test project
Filtering is supported: https://github.com/Microsoft/vstest-docs/blob/master/docs/filter.md
For example:
```
dotnet test TestProject.Tests --filter !=UI
```
to exclude all UI tests
