
function Set-IpAddressOctet4 {
    param (
        [string]$ip,
     
        [ValidateRange(0,255)]
        [int]$newoctet
    )
     $ip = ($ip -split '/')[0]
     $octets = $ip -split "\."
     $octets[3] = $newoctet.ToString()
     
     $newaddress = $octets -join "."
     $newaddress
}
