# Tworzenie maszyn testowych w obu sieciach

$rg = "rg-walcz-vpn"
$location = "PolandCentral"
$cred = Get-Credential

New-AzVM -Name "vm-finanse" -ResourceGroupName $rg -Location $location `
    -VirtualNetworkName "vnet-finanse" -SubnetName "subnet-finanse" `
    -Credential $cred -Image "Win2019Datacenter"

New-AzVM -Name "vm-kartografia" -ResourceGroupName $rg -Location $location `
    -VirtualNetworkName "vnet-kartografia" -SubnetName "subnet-kartografia" `
    -Credential $cred -Image "Win2019Datacenter"
