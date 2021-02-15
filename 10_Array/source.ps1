# declaring an array variable
Write-Host "1) Declaring an array variable"
Write-Host "=> Example 1"
$a = 1, 2, 3, 4
Write-Host "->"$a
Write-Host "->"$a.GetType() # GetType() method returns the type of an array

Write-Host "=> Example 2"
$a = 1..5
Write-Host "->"$a
Write-Host "->"$a.GetType()

Write-Host "=> Example 3: Make an array variable of type System.Int32"
[int32[]]$b = 1500, 2250, 3350, 4000
Write-Host "->"$b
Write-Host "->"$b.GetType()

Write-Host "=> Example 4: storing different type of values in an array"
$c = 1, 2, 3, "anurag", 5
Write-Host "->"$c
Write-Host "->"$c.GetType()

Write-Host "2) Processing Arrays"
$myList = 5.6, 4.5, 3.3, 13.2, 4.0, 34.33, 34.0, 45.45, 99.993, 11123

write-host("-> Print all the array elements")
$myList

write-host("-> Get the length of array")
$myList.Length

write-host("-> Get Second element of array")
$myList[1]

write-host("-> Get partial array")
$subList = $myList[1..3]

write-host("-> Print partial array")
$subList

write-host("-> Using for loop")
for ($i = 0; $i -le ($myList.length - 1); $i ++) {
  $myList[$i]
}

write-host("-> Using forEach Loop")
foreach ($element in $myList) {
  $element
}

write-host("-> Using while Loop")
$i = 0
while($i -lt 4) {
  $myList[$i];
  $i++
}

write-host("-> Assign values")
$myList[1] = 10
$myList

Write-Host "3) Declaring Array using Short-Cut Method"
$x = @(0..10)
Write-Host "-> Array Values: "$x
# assigning different value at index 1
$x[1] = 100
Write-Host "-> Array Values: "$x

<#
OUTPUT:

1) Declaring an array variable
=> Example 1
-> 1 2 3 4
-> System.Object[]
=> Example 2
-> 1 2 3 4 5
-> System.Object[]
=> Example 3: Make an array variable of type System.Int32
-> 1500 2250 3350 4000
-> System.Int32[]
=> Example 4: storing different type of values in an array
-> 1 2 3 anurag 5
-> System.Object[]
2) Processing Arrays
-> Print all the array elements
5.6
4.5
3.3
13.2
4
34.33
34
45.45
99.993
11123
-> Get the length of array
10
-> Get Second element of array
4.5
-> Get partial array
-> Print partial array
4.5
3.3
13.2
-> Using for loop
5.6
4.5
3.3
13.2
4
34.33
34
45.45
99.993
11123
-> Using forEach Loop
5.6
4.5
3.3
13.2
4
34.33
34
45.45
99.993
11123
-> Using while Loop
5.6
4.5
3.3
13.2
-> Assign values
5.6
10
3.3
13.2
4
34.33
34
45.45
99.993
11123
3) Declaring Array using Short-Cut Method
-> Array Values:  0 1 2 3 4 5 6 7 8 9 10
-> Array Values:  0 100 2 3 4 5 6 7 8 9 10
#>