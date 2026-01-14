# Testy połączenia między VM przez tunel VPN

Test-NetConnection -ComputerName "10.1.1.4" -Port 3389
ping 10.1.1.4
tracert 10.1.1.4
