# Running PowerShell on OSX
PowerShell Core is supported on OSX - it can be installed here: https://docs.microsoft.com/en-us/powershell/scripting/setup/installing-powershell-core-on-macos?view=powershell-6

# AzureRM
https://docs.microsoft.com/en-us/powershell/azure/install-azurermps-maclinux?view=azurermps-6.9.0
**Do not install AzureRM**
Install Install AzureRM.NetCore by following steps:
1. start `sudo pwsh`
2. run `Install-Module AzureRM.NetCore`

# Connect to Azure
1. Load module: `Import-Module AzureRM.Profile.Netcore`
2. Login: `Connect-AzureRmAccount`
