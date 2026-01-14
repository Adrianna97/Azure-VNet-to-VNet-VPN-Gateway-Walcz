# ⚙️ Realizacja techniczna

## Etap 1 — Sieci i podsieci
- Utworzono vnet-finanse i vnet-kartografia
- Dodano subnet-finanse i subnet-kartografia
- Dodano GatewaySubnet w obu sieciach (adresacja: 10.10.255.0/27)

## Etap 2 — Publiczne IP i VPN Gateway
- pip-vpngw-finanse + vpngw-finanse (RouteBased, VpnGw1)
- pip-vpngw-kartografia + vpngw-kartografia

## Etap 3 — Połączenie VNet-to-VNet
- conn-finanse-kartografia + conn-kartografia-finanse
- Typ: Vnet2Vnet, PSK: WalczVPN123

## Etap 4 — Testowe maszyny
- vm-finanse w vnet-finanse
- vm-kartografia w vnet-kartografia
- Test RDP i ping potwierdził działanie tunelu
