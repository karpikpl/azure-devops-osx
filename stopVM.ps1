& "./setVariables.ps1"
Stop-AzureRmVM -ResourceGroupName $ResourceGroupName -Name $VmName -Force
