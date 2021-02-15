# For loop
Write-Host "1) For loop:"
$array = @("item1", "item2", "item3")
For($i = 0 ; $i -lt $array.Length; $i++){
  $array[$i]
}

# ForEach loop
Write-Host "2) ForEach loop (Method 1):"
$array = @("item1", "item2", "item3")
ForEach($element in $array){
  $element
}

Write-Host "3) ForEach loop (Method 2):"
$array = @("item1", "item2", "item3")
$array | ForEach-Object { $_}

# While loop
Write-Host "4) While loop:"
$array = @("item1", "item2", "item3")
$counter = 0
While($counter -lt $array.Length){
  Write-Host "->"$array[$counter]
  $counter += 1
}

# Do..While loop
Write-Host "5) Do...While loop:"
$array = @("item1", "item2", "item3")
$counter = 0
Do{
  Write-Host "->"$array[$counter]
  $counter += 1
}While($counter -lt $array.Length)

<#
OUTPUT:

1) For loop:
item1
item2
item3
2) ForEach loop (Method 1):
item1
item2
item3
3) ForEach loop (Method 2):
item1
item2
item3
4) While loop:
-> item1
-> item2
-> item3
5) Do...While loop:
-> item1
-> item2
-> item3
#>