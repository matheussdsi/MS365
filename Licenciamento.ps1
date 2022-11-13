#1ºConectar no portal#
Connect-MsolService

#2º# 
Get-MsolAccountsku

#Verificar usuários Licenciados#

Get-MsolUser | Where {$_.IsLicensed}|format-table

Get-MsolUser | Where {$_.IsLicensed}| Out-GridView

Get-MsolUser | Where {$_.IsLicensed}| Select status ,Displayname ,Licenses |Out-GridView

Get-MsolUser | Where {$_.IsLicensed}| Select status ,Displayname ,Licenses |
#Verificar usuários Licenciados#

Get-MsolUser | Where {($_.IsLicensed).AccountSkuID -eq $accountskuid} | Export-CSV "C:\tmp\licenças.csv"

Get-MsolUser | Where {($_.IsLicensed).AccountSkuID -eq $accountskuid} | Export-CSV "C:\tmp\licenças.csv"

Get-MsolUser | Where {($_.Licenses).AccountSkuID -eq $accountskuid} | Export-CSV "C:\tmp\licenças.csv"

#Visualizar se usuarios estão licenciados com campos personalizaveis#
Get-MsolUser -All| Select DisplayName,Department,IsLicensed,UsageLocation |export-csv "c:\tmp\bomba.csv"

Get-MsolUser -All| Select DisplayName,Department,IsLicensed,UsageLocation |Out-GridView


Get-MgUser -All | Select DisplayName,UserPrincipalName,JobTitle| Export-CSV -Path "C:\ExportDetails.CSV" -NoTypeInformation


Get-MsolUser -All | Select DisplayName,Department,IsLicensed| Export-CSV -Path "C:\ExportDetails.CSV"  -NoTypeInformation

Get-MgSubscribedSku




