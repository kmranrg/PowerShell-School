Write-Host "---------------------------------------------------"
Write-Host "`t`tWELCOME TO VOTING BOT" -ForegroundColor DarkYellow
Write-Host "---------------------------------------------------"

$age = Read-Host "Please enter your age"

if($age -ge 18){
  Write-Host "---------------------------------------------------"
  Write-Host "Yippie!! You're eligible to vote in India." -ForegroundColor DarkGreen
  Write-Host "---------------------------------------------------"
}else{
  $ageDiff = 18 - $age
  Write-Host "---------------------------------------------------"
  Write-Host "Sorry! You're not eligible to vote in India.`nCome again after $ageDiff years." -ForegroundColor DarkRed
  Write-Host "---------------------------------------------------"
}

<#
OUTPUT:

---------------------------------------------------
                WELCOME TO VOTING BOT
---------------------------------------------------
Please enter your age: 15
---------------------------------------------------
Sorry! You're not eligible to vote in India.
Come again after 3 years.
---------------------------------------------------
#>