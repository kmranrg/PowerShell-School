<#
Theory:

1) Get-Unique : cmdlet can be used to get the unique objects from a 
                sorted list of objects.

2) Group-Object : cmdlet displays objects in groups based on the value
                  of a specified property. Group-Object returns a table
                  with one row for each property value and a column that
                  displays the number of items with that value.

3) Measure-Object : cmdlet can be used to get the properties of the passed
                    output such as min, max, size, count, line etc.
              
4) Compare-Object : cmdlet can be used to compare two objects.

5) Format-List : cmdlet can be used to formats the output as a list of
                 properties where a property appears on a new line.

6) Format-Wide : cmdlet can be used to formats the output as a table with
                 one property per object.
#>

Write-Host "1) Making list of strings"
$list = "one", "two", "two", "three", "four", "five"

Write-Host "2) Printing a list"
$list

Write-Host "3) Printing unique value of list"
$list | sort | Get-Unique

Write-Host "4) Group Objects"
$list | sort | Group-Object

Write-Host "5) Measure-Object"
New-Item 'demo.txt' -ItemType File
Set-Content 'demo.txt' 'Hello'
Add-Content 'demo.txt' 'World'
Get-Content 'demo.txt' | Measure-Object -character -line -word

Write-Host "6) Counting total no of files present in the current directory"
Get-ChildItem | Measure-Object

Write-Host "7) Compare-Object"
# creating a file and adding some content into it
New-Item 'fileDemo1.txt' -ItemType File
Set-Content 'fileDemo1.txt' 'Welcome Anurag'
# creating another file and adding some content into it
New-Item 'fileDemo2.txt' -ItemType File
Set-Content 'fileDemo2.txt' 'Hello World'
Add-Content 'fileDemo2.txt' 'Welcome Anurag'
# now comparing the files and printing the uncommon line
Write-Host "-> Comparing the files and printing the uncommon line"
Compare-Object -ReferenceObject $(Get-Content 'fileDemo1.txt') -DifferenceObject $(Get-Content 'fileDemo2.txt')
# now comparing the files and printing the uncommon lines along with same lines
Write-Host "-> Comparing the files and printing the uncommon lines along with same lines"
Compare-Object -ReferenceObject $(Get-Content 'fileDemo1.txt') -DifferenceObject $(Get-Content 'fileDemo2.txt') -IncludeEqual

Write-Host "8) Format-List"
$A = Get-ChildItem '*.txt'
Format-List -InputObject $A

<#
KNOWLEDGE CLOUD: Get-Service

1) This cmdlet is used to get all the services in WindowsOS.
2) This cmdlet is not available in Linux/macOS PowerShell as of Feb 13, 2021.
3) However, this cmdlet should be fixed in a future release as said by Microsoft.
4) To get a better view of all services, use the follwing cmdlet combination:
      Get-Service | Format-List
#>

Write-Host "9) Print name of all the text files of the current directory"
$B = Get-ChildItem '*.txt'
Format-Wide -InputObject $B

Write-Host "10) Print the size of all the text files of the current directory"
Format-Wide -InputObject $B -Property Length