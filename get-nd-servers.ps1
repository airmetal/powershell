Import-Module CaaS
 
#capture the Caas credentials and create a new Caas conneciton
$login = Get-Credential
New-CaasConnection -ApiCredentials $login -Region NorthAmerica_NA
 
#Get all available network domains
$networkDomains = Get-CaasNetworkDomain
Write-Host "*****************************************************"
Write-Host "Printing all available network domains"
foreach ( $networkDomain in $networkDomains){
    Write-Host $networkDomain.name
}
#Get all available servers
$servers = Get-CaasServer
Write-Host  "*****************************************************"
Write-Host "Printing all available servers"
foreach ( $server in $servers){
    Write-Host $server.name
}
