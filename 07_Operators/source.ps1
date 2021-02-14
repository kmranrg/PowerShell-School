<#
Arithmetic Operators:

1) +(Addition Operator) : Adds values on either side of the operator.
2) -(Subtraction Operator) : Subtracts right-hand operand from left-hand operand.
3) *(Multiplication Operator) : Multiplies values on either side of the operator.
4) /(Division Operator) : Divides left-hand operand by right-hand operand.
5) %(Modulus Operator) : Divides left-hand operand by right-hand operand and returns remainder.
#>

$a = 5
$b = 2

$res = $a + $b
Write-Host "1) Addition: $res"

$res = $a - $b
Write-Host "2) Subtraction: $res"

$res = $a * $b
Write-Host "3) Multiplication: $res"

$res = $a / $b
Write-Host "4) Division: $res"

$res = $a % $b
Write-Host "5) Modulus: $res"

<#
Comparison Operators:

1) eq(equals) : Compares two values to be equal or not.
2) ne(not equals) : Compares two values to be not equal.
3) gt(greater than) : Compares first value to be greater than second one.
4) ge(greater than or equal to) : Compares first value to be greater than or equals to second one.
5) lt(less than) : Compares first value to be less than second one.
6) le(less than or equals to) : Compares first value to be less than or equals to second one.
#>

$a = 5
$b = 2

$res = $a -eq $b
Write-Host "6) Equals to: "$res

$res = $a -ne $b
Write-Host "7) Not Equals to: "$res

$res = $a -gt $b
Write-Host "8) Greater than: "$res

$res = $a -ge $b
Write-Host "9) Greater than or Equals to: "$res

$res = $a -lt $b
Write-Host "10) Less than: "$res

$res = $a -le $b
Write-Host "11) Less than or Equals to: "$res

$res = "apple", "mango", "guava" -Contains "guava"
Write-Host "12) Contains: " $res

$res = "apple", "mango", "guava" -NotContains "guava"
Write-Host "13) NotContains: " $res

$res = "kumar-anurag" -Match "-" #it is just going to check whether the given string contains '-' or not
Write-Host "14) Match: " $res

<#
Assignment Operators:

1) = : Simple assignment operator. Assigns values from right side operands to left side operand.
2) += : If we type `$a += $b`, it is equivalent to `$a = $a + $b`.
3) -= : If we type `$a -= $b`, it is equivalent to `$a = $a - $b`.
#>

$a = 5

$res = $a + 4
Write-Host "15) = : "$res

$res += $a
Write-Host "16) += : "$res

$res -= $a
Write-Host "17) -= : "$res

<#
Logical Operators:

1) AND : Called Logical AND operator. If both the operands are non-zero,
         then the condition becomes true.
    
2) OR : Called Logical OR Operator. If any of the two operands are non-zero,
        then the condition becomes true.

3) NOT : Called Logical NOT Operator. Use to reverses the logical state of
         its operand. If a condition is true then Logical NOT operator will
         make false.
#>

$a = 5
$b = 2

$res = $a -AND $b
Write-Host "18) Logical AND: "$res

$res = $a -OR $b
Write-Host "19) Logical OR: "$res

$res = -NOT-($a -AND $b)
Write-Host "20) Logical NOT: "$res

# Miscellaneous Operators

$location = Get-Location
$res = $location -Is "System.Management.Automation.PathInfo"
Write-Host "21) Is: "$res

$res = $location -IsNot "System.Management.Automation.PathInfo"
Write-Host "22) IsNot: "$res

$a = 5
$res = $a++
Write-Host "23) ++ : "$res
Write-Host "24) ++ : "$a

<#
OUTPUT:

1) Addition: 7
2) Subtraction: 3
3) Multiplication: 10
4) Division: 2.5
5) Modulus: 1
6) Equals to:  False
7) Not Equals to:  True
8) Greater than:  True
9) Greater than or Equals to:  True
10) Less than:  False
11) Less than or Equals to:  False
12) Contains:  True
13) NotContains:  False
14) Match:  True
15) = :  9
16) += :  14
17) -= :  9
18) Logical AND:  True
19) Logical OR:  True
20) Logical NOT:  False
21) Is:  True
22) IsNot:  False
23) ++ :  5
24) ++ :  6
#>