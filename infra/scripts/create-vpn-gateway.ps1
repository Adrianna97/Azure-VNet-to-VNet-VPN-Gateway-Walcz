# Tworzenie bram VPN Gateway v2

$rg = "rg-walcz-vpn"
$location = "PolandCentral"

$vnetFin = Get-AzVirtualNetwork -Name "vnet-finanse" -ResourceGroupName $rg
$subnetFinGw = Get-AzVirtualNetworkSubnetConfig -Name "GatewaySubnet" -VirtualNetwork $vnetFin
$pipFin = Get-AzPublicIpAddress -Name "pip-vpngw-finanse" -ResourceGroupName $rg

New-AzVirtualNetworkGateway -Name "vpngw-finanse" -ResourceGroupName $rg -Location $location `
    -GatewayType Vpn -VpnType RouteBased -Sku VpnGw1 `
    -VirtualNetwork $vnetFin -GatewayIpAddress $pipFin -GatewaySubnetId $subnetFinGw.Id

$vnetKart = Get-AzVirtualNetwork -Name "vnet-kartografia" -ResourceGroupName $rg
$subnetKartGw = Get-AzVirtualNetworkSubnetConfig -Name "GatewaySubnet" -VirtualNetwork $vnetKart
$pipKart = Get-AzPublicIpAddress -Name "pip-vpngw-kartografia" -ResourceGroupName $rg

New-AzVirtualNetworkGateway -Name "vpngw-kartografia" -ResourceGroupName $rg -Location $location `
    -GatewayType Vpn -VpnType RouteBased -Sku VpnGw1 `
    -VirtualNetwork $vnetKart -GatewayIpAddress $pipKart -GatewaySubnetId $subnetKartGw.Id
