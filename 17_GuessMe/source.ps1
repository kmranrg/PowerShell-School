Write-Host "---------------------------------------------------"
Write-Host "`t`tWELCOME TO GUESS ME GAME" -ForegroundColor Yellow
Write-Host "---------------------------------------------------"

function Get-UserInput ($userInput, $actualAns, $attempt) {

  if($userInput -eq $actualAns){
    Write-Host "Congratulations!! You won!`nYou took $attempt attempts to guess the actual answer." -ForegroundColor DarkGreen
    Write-Host "---------------------------------------------------"
  }else {
    if($userInput -lt $actualAns){
      Write-Host "---------------------------------------------------"
      Write-Host "Your number is smaller. Try a larger number..." -ForegroundColor DarkBlue
      $attempt++
      $temp = Read-Host "Please guess a number between 1 and 100"
      Get-UserInput -userInput $temp -actualAns $actualAns -attempt $attempt
    }else{
      Write-Host "---------------------------------------------------"
      Write-Host "Your number is greater. Try a smaller number..." -ForegroundColor DarkBlue
      $attempt++
      $temp = Read-Host "Please guess a number between 1 and 100"
      Get-UserInput -userInput $temp -actualAns $actualAns -attempt $attempt
    }
  }

}

# let's generate a random no from 1 - 100
$ans = Get-Random -Minimum 1 -Maximum 101

# let's take an input from user
$user = Read-Host "Please guess a number between 1 and 100"

# let's make an attempt variable which will keep track of total no of attempts
$attempt = 1

# let's check the answer
Get-UserInput -userInput $user -actualAns $ans -attempt $attempt

<#
OUTPUT:

---------------------------------------------------
                WELCOME TO GUESS ME GAME
---------------------------------------------------
Please guess a number between 1 and 100: 50
---------------------------------------------------
Your number is greater. Try a smaller number...
Please guess a number between 1 and 100: 30
---------------------------------------------------
Your number is greater. Try a smaller number...
Please guess a number between 1 and 100: 20
---------------------------------------------------
Your number is smaller. Try a larger number...
Please guess a number between 1 and 100: 25
---------------------------------------------------
Your number is smaller. Try a larger number...
Please guess a number between 1 and 100: 28
Congratulations!! You won!
You took 5 attempts to guess the actual answer.
---------------------------------------------------
#>