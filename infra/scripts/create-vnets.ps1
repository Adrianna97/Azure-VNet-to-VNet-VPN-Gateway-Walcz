# ================================
# Tworzenie dwóch sieci VNet: vnet-finanse i vnet-kartografia

$rg = "rg-walcz-vpn"
$location = "PolandCentral"

New-AzResourceGroup -Name $rg -Location $location

New-AzVirtualNetwork -Name "vnet-finanse" -ResourceGroupName $rg -Location $location `
    -AddressPrefix "10.0.0.0/16" `
    -Subnet @(
        New-AzVirtualNetworkSubnetConfig -Name "subnet-finanse" -AddressPrefix "10.0.1.0/24",
        New-AzVirtualNetworkSubnetConfig -Name "GatewaySubnet" -AddressPrefix "10.0.255.0/27"
    )

New-AzVirtualNetwork -Name "vnet-kartografia" -ResourceGroupName $rg -Location $location `
    -AddressPrefix "10.1.0.0/16" `
    -Subnet @(
        New-AzVirtualNetworkSubnetConfig -Name "subnet-kartografia" -AddressPrefix "10.1.1.0/24",
        New-AzVirtualNetworkSubnetConfig -Name "GatewaySubnet" -AddressPrefix "10.1.255.0/27"
    )
	
