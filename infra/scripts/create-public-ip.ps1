# Tworzenie publicznych IP dla bram VPN

$rg = "rg-walcz-vpn"
$location = "PolandCentral"

New-AzPublicIpAddress -Name "pip-vpngw-finanse" -ResourceGroupName $rg -Location $location `
    -AllocationMethod Static -Sku Standard

New-AzPublicIpAddress -Name "pip-vpngw-kartografia" -ResourceGroupName $rg -Location $location `
    -AllocationMethod Static -Sku Standard
