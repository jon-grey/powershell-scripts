

function Set-IpAddressOctet {
    param (
        [string]$ip,

        [ValidateRange(0,255)]
        [int]$newOctet,

        [ValidateRange(0,3)]
        [int]$octetId = 3
    )
     $ip = ($ip -split '/')[0]
     $octets = $ip -split "\."
     $octets[$octetId] = $newOctet.ToString()
     
     $newaddress = $octets -join "."
     $newaddress
}

