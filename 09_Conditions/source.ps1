# if statement
Write-Host "1) if statement"
$a = 10
if($a -lt 20){
  Write-Host "-> 10 is lesser than 20"
}

# if-else statement
Write-Host "2) if-else statement"
$age = 20
if ($age -le 18){
  Write-Host "-> You're not eligible to vote in India"
}else{
  Write-Host "-> You're eligible to vote in India"
}

# nested if-else statement
Write-Host "3) nested if-else statement"
$i = 20
if($i%2 -eq 0){
  if($i -gt 10){
    Write-Host "-> the given number is even and greater than 10"
  }else{
    Write-Host "-> the given number is even but not greather than 10"
  }
}else{
  Write-Host "-> the given number is not even"
}

# switch statement
Write-Host "4) switch statement"
Write-Host "=> Example 1"
switch(3){
  1 {"- One"}
  2 {"- Two"}
  3 {"- Three"}
  4 {"- Four"}
  3 {"- Three Again"}
}

Write-Host "=> Example 2: introducing break"
switch(3){
  1 {"- One"}
  2 {"- Two"}
  3 {"- Three"; break;}
  4 {"- Four"}
  3 {"- Three Again"}
}

Write-Host "=> Example 3: switch with 2 parameters"
switch(4,2){
  1 {"- One"}
  2 {"- Two"}
  3 {"- Three"; break;}
  4 {"- Four"}
  3 {"- Three Again"}
}

<#
OUTPUT:

1) if statement
-> 10 is lesser than 20
2) if-else statement
-> You're eligible to vote in India
3) nested if-else statement
-> the given number is even and greater than 10
4) switch statement
=> Example 1
- Three
- Three Again
=> Example 2: introducing break
- Three
=> Example 3: switch with 2 parameters
- Four
- Two
#>