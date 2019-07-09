 $clientID = "73381521-5ca7-46d4-80bd-2809437f2e71"
$key = "+O./D_8FWEffexBQjCoaj96Pjh1[9]cg"
$SecurePassword = $key | ConvertTo-SecureString -AsPlainText -Force
$cred = new-object -typename System.Management.Automation.PSCredential `
     -argumentlist $clientID, $SecurePassword
$tenantID = "550409c2-def2-48ab-b03b-7e894d5a62a0"

Add-AzureRmAccount -Credential $cred -TenantId $tenantID -ServicePrincipal
