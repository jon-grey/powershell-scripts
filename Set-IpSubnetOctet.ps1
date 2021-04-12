
function Set-IpSubnetOctet {
    param (
        [string]$ip,

        [ValidateRange(0,255)]
        [int]$newOctet,

        [ValidateRange(0,3)]
        [int]$octetId = 3
    )
    $ip, $subnet = ($ip -split '/')
    $octets = $ip -split "\."
    $octets[$octetId] = $newOctet.ToString()
     
    $newaddress = ($octets -join ".") + "/" + $subnet
    $newaddress
}