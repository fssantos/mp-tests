$RGName="vm-resources"
$VM1Name="vm-lisa"

#Get-AzureRmResourceGroup -Name "vm-resources"
#Get-AzureRmVM

#Start-AzureRmVM -ResourceGroupName "vm-resources" -Name $VM1Name
Stop-AzureRmVM -ResourceGroupName "vm-resources" -Name "vm-lucy"
Stop-AzureRmVM -ResourceGroupName "vm-resources" -Name "vm-lisa"