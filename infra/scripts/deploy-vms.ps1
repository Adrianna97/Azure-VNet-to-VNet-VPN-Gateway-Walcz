# Konfiguracja połączenia VNet-to-VNet IPsec

$rg = "rg-walcz-vpn"

$gwFin = Get-AzVirtualNetworkGateway -Name "vpngw-finanse" -ResourceGroupName $rg
$gwKart = Get-AzVirtualNetworkGateway -Name "vpngw-kartografia" -ResourceGroupName $rg

New-AzVirtualNetworkGatewayConnection -Name "conn-finanse-kartografia" -ResourceGroupName $rg `
    -Location "PolandCentral" -VirtualNetworkGateway1 $gwFin -VirtualNetworkGateway2 $gwKart `
    -ConnectionType Vnet2Vnet -SharedKey "WalczVPN123"

New-AzVirtualNetworkGatewayConnection -Name "conn-kartografia-finanse" -ResourceGroupName $rg `
    -Location "PolandCentral" -VirtualNetworkGateway1 $gwKart -VirtualNetworkGateway2 $gwFin `
    -ConnectionType Vnet2Vnet -SharedKey "WalczVPN123"

