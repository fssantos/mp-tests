$userName = "d88286ee-96fc-46c9-ac57-cba1d77fb0b6"
$azurePassword = ConvertTo-SecureString "prav@211" -AsPlainText -Force
$psCred = New-Object System.Management.Automation.PSCredential($userName, $azurePassword)

#o trecho comentado abaixo é bom para testar se o login manual funciona
#$cred = Get-Credential -UserName $userName -Message "Enter Password"

Connect-AzureRmAccount -Credential $psCred -ServicePrincipal -TenantId 077de29a-94f4-431a-8c26-fdc206bea994


$RGName="vm-resources"
$VM1Name="vm-lisa"

#Get-AzureRmResourceGroup -Name "vm-resources"
#Get-AzureRmVM

Start-AzureRmVM -ResourceGroupName "vm-resources" -Name $VM1Name
