Function Set-AccountPolicy
{
    Param 
    (
        [string]$policy,
        [string]$value,
        [string]$label,
        [string]$id
    )
    $accountpol = "C:\Windows\System32\net.exe"
    Write-Host -ForegroundColor Green  "CIS: $id $label"
    #Write-Host "& $accountpol accounts $policy$value"
    Invoke-Expression "& $accountpol accounts $policy$value"
}



$filename = "cis_server_2016_account_policies_l1.json"
$policies = Get-Content -Raw $filename  | ConvertFrom-Json
 foreach ($policy in $policies.account_policy[0].policies)
 {
    Set-AccountPolicy -policy $policy.policy -value $policy.value -label $policy.label -id $policy.id
 }
