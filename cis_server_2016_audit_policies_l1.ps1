<#
By Harjinder Singh
#>
Function Set-AuditPolicy
{

Param 
(
    [string]$Policy,
    [string]$Success, 
    [string]$Failure
)

$auditpol = "C:\Windows\System32\AuditPol.exe"

#Write-Host "& $auditpol /set /subcategory:$Policy /success:$Success /failure:$Failure"
Invoke-Expression "& $auditpol /set /subcategory:$Policy /success:$Success /failure:$Failure"

}
Set-AuditPolicy -Policy "'Credential Validation'" -Success "enable" -Failure "enable"
Set-AuditPolicy -Policy "'Application Group Management'" -Success "enable" -Failure "enable"
Set-AuditPolicy -Policy "'Computer Account Management'" -Success "enable" -Failure "enable"


Set-AuditPolicy -Policy "'Other Account Management Events'" -Success "enable" -Failure "enable"
Set-AuditPolicy -Policy "'Security Group Management'" -Success "enable" -Failure "enable"
Set-AuditPolicy -Policy "'User Account Management'" -Success "enable" -Failure "enable"
Set-AuditPolicy -Policy "'Plug and Play Events'" -Success "enable" -Failure "disable"
Set-AuditPolicy -Policy "'Process Creation'" -Success "enable" -Failure "disable"
Set-AuditPolicy -Policy "'Account Lockout'" -Success "enable" -Failure "enable"
Set-AuditPolicy -Policy "'Group Membership'" -Success "enable" -Failure "disable"
Set-AuditPolicy -Policy "'Logoff'" -Success "enable" -Failure "disable"
Set-AuditPolicy -Policy "'Logon'" -Success "enable" -Failure "enable"
Set-AuditPolicy -Policy "'Other Logon/Logoff Events'" -Success "enable" -Failure "enable"

Set-AuditPolicy -Policy "'Special Logon'" -Success "enable" -Failure "disable"
Set-AuditPolicy -Policy "'Removable Storage'" -Success "enable" -Failure "enable"


Set-AuditPolicy -Policy "'Audit Policy Change'" -Success "enable" -Failure "enable"
Set-AuditPolicy -Policy "'Authentication Policy Change'" -Success "enable" -Failure "disable"
Set-AuditPolicy -Policy "'Authorization Policy Change'" -Success "enable" -Failure "disable"
Set-AuditPolicy -Policy "'Sensitive Privilege Use'" -Success "enable" -Failure "enable"
Set-AuditPolicy -Policy "'IPsec Driver'" -Success "enable" -Failure "enable"

Set-AuditPolicy -Policy "'Other System Events'" -Success "enable" -Failure "enable"
Set-AuditPolicy -Policy "'Security State Change'" -Success "enable" -Failure "disable"
Set-AuditPolicy -Policy "'Security System Extension'" -Success "enable" -Failure "enable"
Set-AuditPolicy -Policy "'System Integrity'" -Success "enable" -Failure "enable"




