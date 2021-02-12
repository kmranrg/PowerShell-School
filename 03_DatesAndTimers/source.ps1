<#
Theory:

1) Get-Date : cmdlet is used to get the System Date.

2) Get-Timezone : cmdlet is used to get the System Timezone

3) Set-Date : cmdlet is used to set the System Date.

4) exit : is used to exit the powershell.

5) Get-Date : cmdlet is used to get only System Time.

6) Set-Date : cmdlet is used to set System Time.
#>

## NOTE: Open the PowerShell in sudo mode (adiministrator mode), `sudo pwsh`

# 1) getting the system time
Write-Host "1) "
Get-Date

# 2) getting the timezone
Write-Host "2) "
Get-TimeZone

# 3) getting only date without time
Write-Host "3) "
Get-Date -DisplayHint Date

# 4) setting the system time
Write-Host "4) "
Set-Date -Date (Get-Date).AddDays(1) # adding 1 day to the original date
Write-Host "5) "
Set-Date -Date (Get-Date).AddDays(-1) # setting back to the original date

# 5) getting only time
Write-Host "6) "
Get-Date -DisplayHint Time

# 6) setting the time
Write-Host "7) "
# now we will add 60 minutes to the current time
$timeToAdd = New-TimeSpan -Minutes 60
Set-Date -Adjust $timeToAdd
# now let's go back to original time
Write-Host "8) "
$timeToSubtract = New-TimeSpan -Minutes -60
Set-Date -Adjust $timeToSubtract

<#
OUTPUT:

1) 

Friday, 12 February 2021 15:21:19
2) 

Id                         : Asia/Kolkata
DisplayName                : (UTC+05:30) India Standard Time
StandardName               : India Standard Time
DaylightName               : GMT+05:30
BaseUtcOffset              : 05:30:00
SupportsDaylightSavingTime : True

3) 
Friday, 12 February 2021
4) 
Saturday, 13 February 2021 15:21:20
5) 
Friday, 12 February 2021 15:21:20
6) 
15:21:20
7) 
Friday, 12 February 2021 16:21:20
8) 
Friday, 12 February 2021 15:21:20
#>