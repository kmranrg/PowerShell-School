# let's start this by creting an empty array variable
Write-Host "1) Making an empty array variable"
$a = @()
Write-Host "->"$a.GetType()

# declaring an empty hashtable variable
Write-Host "2) Making an empty hastable variable"
$h = @{}
Write-Host "->"$h.GetType()

# defining a hashtable variable
Write-Host "3) Defining and printing a hashtable variable"
$hash = @{ID=4; Shape="Rectangle"; Color="Red"} # by defining like this order is not fixed
$hash

Write-Host "4) Make a hashtable variable with fixed order always"
$hash = [ordered]@{ID=4; Shape="Rectangle"; Color="Red"} # now order of elements is fixed
$hash

Write-Host "5) Processing Hashtable"
$hash = @{ID = 1; Shape = "Square"; Color = "Blue"}

write-host("-> Print all hashtable keys")
$hash.keys

write-host("-> Print all hashtable values")
$hash.values

write-host("-> Print only ID")
$hash["ID"]

write-host("-> Print only Shape")
$hash.Shape

write-host("-> Print Size")
$hash.Count

write-host("-> Add key-value")
$hash["Updated"] = "Now"
$hash

write-host("-> Add key-value")
$hash.Add("Created","Now")
$hash

write-host("-> Print Size")
$hash.Count

write-host("-> Remove key-value")
$hash.Remove("Updated")
$hash

write-host("-> Print Size")
$hash.Count

write-host("-> Sort by key")
$hash.GetEnumerator() | Sort-Object -Property key

<#
OUTPUT:

1) Making an empty array variable
-> System.Object[]
2) Making an empty hastable variable
-> System.Collections.Hashtable
3) Defining and printing a hashtable variable

Name                           Value
----                           -----
Color                          Red
Shape                          Rectangle
ID                             4
4) Make a hashtable variable with fixed order always
ID                             4
Shape                          Rectangle
Color                          Red
5) Processing Hashtable
-> Print all hashtable keys
Color
Shape
ID
-> Print all hashtable values
Blue
Square
1
-> Print only ID
1
-> Print only Shape
Square
-> Print Size
3
-> Add key-value
Color                          Blue
Updated                        Now
Shape                          Square
ID                             1
-> Add key-value
Color                          Blue
Created                        Now
Updated                        Now
Shape                          Square
ID                             1
-> Print Size
5
-> Remove key-value
Color                          Blue
Created                        Now
Shape                          Square
ID                             1
-> Print Size
4
-> Sort by key
Color                          Blue
Created                        Now
ID                             1
Shape                          Square
#>