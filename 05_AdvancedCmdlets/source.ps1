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

7) Where-Object : cmdlet can be used to select objects having particular
                  property values from the collection of objects that are passed
                  to it.
      
8) Get-ChildItem : cmdlet can be used to get the items or child items in one or more
                   specific locations.

9) ForEach-Object : cmdlet can be used to perform operations on each object of a
                    collection of objects.

10) Start-Sleep : cmdlet suspends the activity in a script or session for the
                  particular period of time.

11) Read-Host : cmdlet is used to read from the console.

12) Select-Object : cmdlet is used to select object or its properties.

13) Sort-Object : cmdlet is used to sort object by its properties.

14) Write-Warning : cmdlet is used to write warning messages.

15) Write-Host : cmdlet is used to write customized messages.

16) Invoke-Item : cmdlet is used to perform a default action on
                  specified item.

17) Invoke-Expression : cmdlet is used to perform a command or expression
                        on local computer.

18) Measure-Command : cmdlet is used to measure the time taken by script
                      or command.

19) Invoke-History : cmdlet is used to run the command from the current
                     session which are already run.

20) Get-History : cmdlet is used to get commands run in current session.

21) Add-History : cmdlet is used to add commands in current history.

22) Get-Culture : cmdlet is used to get current culture set of OS.
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

Write-Host "9) Print name of all the text files or folders of the current directory"
$B = Get-ChildItem '*.txt'
Format-Wide -InputObject $B

Write-Host "10) Print the size of all the text files of the current directory"
Format-Wide -InputObject $B -Property Length

Write-Host "11) Get all the processess starting with p"
Get-Process | Where-Object {$_.ProcessName -Match "^p.*"}

Write-Host = "12) Print name of all the items presnt in current directory in a column"
Get-ChildItem -Name

Write-Host "13) Divide 1000, 2000 and 3000 by 100 and print them in a column"
1000, 2000, 3000 | ForEach-Object -Process {$_/100}

Write-Host "14) Split the string from each fullstop"
"Kumar.Anurag", "Instagram.ID.kmranrg" | ForEach-Object {$_.Split('.')}

Write-Host "15) Print Hello and then wait for 5 seconds and then print World"
Write-Host "Hello"
Start-Sleep -s 5
Write-Host "World"

Write-Host "16) Print Hello and then wait for 1000 milli-seconds and then print World"
Write-Host "Hello"
Start-Sleep -m 5
Write-Host "World"

Write-Host "17) Take first and last name from user and wish Good Morning!"
$fName = Read-Host "Enter your first name"
$lName = Read-Host "Enter your last name"
Write-Host "Good Morning! $fname $lName, nice to meet you."

Write-Host "18) Select-Object"
Get-Process | Select-Object -Property ProcessName, Id, WS -Last 5
"a", "b", "a", "c", "b", "a", "c", "A" | Select-Object -Unique

Write-Host "19) Sort-Object"
Get-Process | Sort-Object -Property WS | Select-Object -Last 5
"B", "a", "b", "a", "c", "b", "a", "c", "A" | Sort-Object

Write-Host "20) Print a warning message: Do Not Touch!"
Write-Warning "Do Not Touch!"

Write-Host "21) Write-Host"
Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkRed
Write-Host "Bye!"

Write-Host "22) Invoke-Item"
Invoke-Item "demo.txt"

Write-Host "23) Invoke-Expression"
$Command = "Get-Process | Select-Object -Last 5"
$Command
Invoke-Expression $Command

Write-Host "24) Calculate the time taken by this command: Write-Host Hello World"
Measure-Command { Write-Host "Hello World" }

Write-Host "25) Execute the just last command"
<#
COMMAND:

Invoke-History

OUTPUT:

Write-Host "20) Execute the just last command"
20) Execute the just last command
#>

Write-Host "26) Print all the commands used in current session"
<#
COMMAND:

Get-History -Count 5

OUTPUT:

  Id     Duration CommandLine
  --     -------- -----------
   1        3.240 Get-Service | Where-Object {$_.Status -eq "Stopped"}
   2        0.463 Get-Process | Where-Object {$_.ProcessName -Match "^p.*"}
   3        0.549 Get-Process | Format-List
   4        0.259 get-process
   5        0.118 Get-Process | Where-Object {$_.ProcessName -Match "^p.*"}
   6        0.170 Get-Process | Where-Object {$_.ProcessName -Match "^c.*"}
   7        1.847 pwsh source.ps1
   8        0.015 cd ./05_AdvancedCmdlets/
   9        2.429 pwsh  source.ps1
  10        0.013 Get-ChildItem -Name
  11        1.098 pwsh  source.ps1
  12        0.015 1000, 2000, 3000 | ForEach-Object -Process {$_/100}
  13        0.166 "Kumar.Anurag", "Instagram.ID.kmranrg" | ForEach-Object {$.Split('.')}
  14        0.026 "Kumar.Anurag", "Instagram.ID.kmranrg" | ForEach-Object {$_.Split('.')}
  15        5.007 Start-Sleep -s 5
  16        0.023 Start-Sleep -m 5
  17        0.008 Start-Sleep -m 5
  18        1.003 Start-Sleep -m 1000
  19        0.004 $x
  20        0.003 $x
  21       10.149 $y = Read-Host  "name:"
  22        0.009 $y
  23        0.003 $x
  24        0.007 $y
  25        0.020 Write-Host "Good Morning! $y" $y
  26        0.005 Write-Host "Good Morning! $y, Nice to meet you!"
  27        0.006 Write-Host "Good Morning! $ysss sss, Nice to meet you!"
  28        0.002 $CONSOLEFILENAME
  29        0.000 $ai = $CONSOLEFILENAME
  30        0.003 $ai
  31        0.006 $PSHOME
  32        0.012 $STACKTRACE
  33        0.088 Get-Process | Select-Object -Property ProcessName, Id, WS -Last 5
  34        0.014 "a", "b", "a", "c", "b", "a", "c", "A" | Select-Object -Unique
  35        0.115 Get-Process | Sort-Object -Property WS | Select-Object -Last 5
  36        0.010 "a", "b", "a", "c", "b", "a", "c", "A" | Sort-Object
  37        0.010 "B", "a", "b", "a", "c", "b", "a", "c", "A" | Sort-Object
  38        0.079 Write-Warning  "Test Warning"
  39        0.009 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor DarkGreen -BackgroundColor White
  40        0.003 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkMagenta
  41        0.005 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkRed
  42        0.004 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkGray
  43        0.005 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkCyan
  44        0.141 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkGrenn
  45        0.007 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkGreen
  46        0.004 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor black
  47        0.004 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor Black -BackgroundColor White
  48        0.002 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor Green -BackgroundColor White
  49        0.003 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor Gray -BackgroundColor White
  50        0.007 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkRed
  51       18.241 pwsh source.ps1
  52       15.514 pwsh source.ps1
  53        0.002 Write-Host "Bye!" -ForegroundColor White -BackgroundColor DarkBlue
  54        0.045 Write-Host "Bye!" -ForegroundColor White -BackgroundColor None
  55        0.042 Write-Host "Bye!" -ForegroundColor White -BackgroundColor Null
  56        0.001 Write-Host "Bye!" -ForegroundColor White -BackgroundColor Blue
  57        0.005 Write-Host "Bye!" -ForegroundColor White -BackgroundColor Black
  58        0.068 cls
  59        0.026 Clear-Host
  60        0.035 Write-Host "Bye!" -ForegroundColor White -BackgroundColor ConsoleColor
  61        0.048 Write-Host "Bye!" -ForegroundColor White -BackgroundColor None
  62        0.001 Write-Host "Bye!" -ForegroundColor White
  63        0.002 Write-Host "Bye!" -ForegroundColor White -BackgroundColor Red
  64        0.001 Write-Host "Bye!" -ForegroundColor White
  65        0.032 cls
  66       10.690 pwsh source.ps1
  67       10.852 pwsh source.ps1
  68        0.001 Write-Host  "Hello"
  69       10.321 pwsh source.ps1
  70       10.188 pwsh source.ps1
  71       10.230 pwsh source.ps1
  72        0.003 $t = "aa"
  73        0.108 t
  74        0.006 $t
  75        0.003 $t = 'sss'
  76        0.005 $t
  77        0.002 $r
  78        9.123 pwsh source.ps1
  79        0.037 Get-ChildItem | Measure-Object
  80        0.113 Get-EventLog "Windows PowerShell"
  81        0.040 Measure-Command { Write-Host "Hello World" }
  82        0.033 Measure-Command { Write-Host "Hello World" }
  83        0.066 Get-History
  84        0.027 Get-history -count 5
  85        0.022 Get-history -count 5 | Add-History
  86        0.040 Measure-Command { Write-Host "Hello World" }
  87        0.033 Measure-Command { Write-Host "Hello World" }
  88        0.066 Get-History
  89        0.027 Get-history -count 5
  90        0.013 Get-history -count 5 | Add-History
  91        0.040 get-History
  92        0.048 get-culture
  93        0.040 cls
  94        0.038 Clear-Host
  95       14.494 pwsh source.ps1
  96        0.008 get-culture
  97        0.063 get-history
  98        9.360 pwsh source.ps1
  99        0.063 Get-History
 100        0.013 Write-Host "20) Execute the just last command"
 101        0.009 Write-Host "20) Execute the just last command"
#>

Write-Host "27) Add the last 5 commands into current history of commands"
<#
COMMAND:

Get-History -Count 5 | Add-History
Get-History

OUTPUT:

  Id     Duration CommandLine
  --     -------- -----------
   1        3.240 Get-Service | Where-Object {$_.Status -eq "Stopped"}
   2        0.463 Get-Process | Where-Object {$_.ProcessName -Match "^p.*"}
   3        0.549 Get-Process | Format-List
   4        0.259 get-process
   5        0.118 Get-Process | Where-Object {$_.ProcessName -Match "^p.*"}
   6        0.170 Get-Process | Where-Object {$_.ProcessName -Match "^c.*"}
   7        1.847 pwsh source.ps1
   8        0.015 cd ./05_AdvancedCmdlets/
   9        2.429 pwsh  source.ps1
  10        0.013 Get-ChildItem -Name
  11        1.098 pwsh  source.ps1
  12        0.015 1000, 2000, 3000 | ForEach-Object -Process {$_/100}
  13        0.166 "Kumar.Anurag", "Instagram.ID.kmranrg" | ForEach-Object {$.Split('.')}
  14        0.026 "Kumar.Anurag", "Instagram.ID.kmranrg" | ForEach-Object {$_.Split('.')}
  15        5.007 Start-Sleep -s 5
  16        0.023 Start-Sleep -m 5
  17        0.008 Start-Sleep -m 5
  18        1.003 Start-Sleep -m 1000
  19        0.004 $x
  20        0.003 $x
  21       10.149 $y = Read-Host  "name:"
  22        0.009 $y
  23        0.003 $x
  24        0.007 $y
  25        0.020 Write-Host "Good Morning! $y" $y
  26        0.005 Write-Host "Good Morning! $y, Nice to meet you!"
  27        0.006 Write-Host "Good Morning! $ysss sss, Nice to meet you!"
  28        0.002 $CONSOLEFILENAME
  29        0.000 $ai = $CONSOLEFILENAME
  30        0.003 $ai
  31        0.006 $PSHOME
  32        0.012 $STACKTRACE
  33        0.088 Get-Process | Select-Object -Property ProcessName, Id, WS -Last 5
  34        0.014 "a", "b", "a", "c", "b", "a", "c", "A" | Select-Object -Unique
  35        0.115 Get-Process | Sort-Object -Property WS | Select-Object -Last 5
  36        0.010 "a", "b", "a", "c", "b", "a", "c", "A" | Sort-Object
  37        0.010 "B", "a", "b", "a", "c", "b", "a", "c", "A" | Sort-Object
  38        0.079 Write-Warning  "Test Warning"
  39        0.009 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor DarkGreen -BackgroundColor White
  40        0.003 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkMagenta
  41        0.005 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkRed
  42        0.004 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkGray
  43        0.005 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkCyan
  44        0.141 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkGrenn
  45        0.007 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkGreen
  46        0.004 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor black
  47        0.004 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor Black -BackgroundColor White
  48        0.002 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor Green -BackgroundColor White
  49        0.003 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor Gray -BackgroundColor White
  50        0.007 Write-Host (1,3,5,7,9,11) -Separator ", --> " -ForegroundColor White -BackgroundColor DarkRed
  51       18.241 pwsh source.ps1
  52       15.514 pwsh source.ps1
  53        0.002 Write-Host "Bye!" -ForegroundColor White -BackgroundColor DarkBlue
  54        0.045 Write-Host "Bye!" -ForegroundColor White -BackgroundColor None
  55        0.042 Write-Host "Bye!" -ForegroundColor White -BackgroundColor Null
  56        0.001 Write-Host "Bye!" -ForegroundColor White -BackgroundColor Blue
  57        0.005 Write-Host "Bye!" -ForegroundColor White -BackgroundColor Black
  58        0.068 cls
  59        0.026 Clear-Host
  60        0.035 Write-Host "Bye!" -ForegroundColor White -BackgroundColor ConsoleColor
  61        0.048 Write-Host "Bye!" -ForegroundColor White -BackgroundColor None
  62        0.001 Write-Host "Bye!" -ForegroundColor White
  63        0.002 Write-Host "Bye!" -ForegroundColor White -BackgroundColor Red
  64        0.001 Write-Host "Bye!" -ForegroundColor White
  65        0.032 cls
  66       10.690 pwsh source.ps1
  67       10.852 pwsh source.ps1
  68        0.001 Write-Host  "Hello"
  69       10.321 pwsh source.ps1
  70       10.188 pwsh source.ps1
  71       10.230 pwsh source.ps1
  72        0.003 $t = "aa"
  73        0.108 t
  74        0.006 $t
  75        0.003 $t = 'sss'
  76        0.005 $t
  77        0.002 $r
  78        9.123 pwsh source.ps1
  79        0.037 Get-ChildItem | Measure-Object
  80        0.113 Get-EventLog "Windows PowerShell"
  81        0.040 Measure-Command { Write-Host "Hello World" }
  82        0.033 Measure-Command { Write-Host "Hello World" }
  83        0.066 Get-History
  84        0.027 Get-history -count 5
  85        0.022 Get-history -count 5 | Add-History
  86        0.040 Measure-Command { Write-Host "Hello World" }
  87        0.033 Measure-Command { Write-Host "Hello World" }
  88        0.066 Get-History
  89        0.027 Get-history -count 5
  90        0.013 Get-history -count 5 | Add-History
  91        0.040 get-History
  92        0.048 get-culture
  93        0.040 cls
  94        0.038 Clear-Host
  95       14.494 pwsh source.ps1
  96        0.008 get-culture
  97        0.063 get-history
  98        9.360 pwsh source.ps1
  99        0.063 Get-History
 100        0.013 Write-Host "20) Execute the just last command"
 101        0.009 Write-Host "20) Execute the just last command"
 102        0.059 Get-History
 103        0.004 Get-History -Count 5 | Add-History
 104        0.063 Get-History
 105        0.013 Write-Host "20) Execute the just last command"
 106        0.009 Write-Host "20) Execute the just last command"
 107        0.059 Get-History
 108        0.002 Get-History -Count 5 | Add-History
#>

Write-Host "28) Display the culture of OS"
Get-Culture

<#
OUTPUT:

1) Making list of strings
2) Printing a list
one
two
two
three
four
five
3) Printing unique value of list
five
four
one
three
two
4) Group Objects

Count Name                      Group
----- ----                      -----
    1 five                      {five}
    1 four                      {four}
    1 one                       {one}
    1 three                     {three}
    2 two                       {two, two}
5) Measure-Object

LastWriteTime : 13/02/2021 18:56:57
Length        : 0
Name          : demo.txt


Lines      : 2
Words      : 2
Characters : 10
Property   : 

6) Counting total no of files present in the current directory

Count             : 2
Average           : 
Sum               : 
Maximum           : 
Minimum           : 
StandardDeviation : 
Property          : 

7) Compare-Object

LastWriteTime : 13/02/2021 18:56:57
Length        : 0
Name          : fileDemo1.txt


LastWriteTime : 13/02/2021 18:56:57
Length        : 0
Name          : fileDemo2.txt

-> Comparing the files and printing the uncommon line

InputObject   : Hello World
SideIndicator : =>

-> Comparing the files and printing the uncommon lines along with same lines

InputObject   : Welcome Anurag
SideIndicator : ==


InputObject   : Hello World
SideIndicator : =>

8) Format-List


    Directory: /home/kmranrg/Documents/kan_work/PowerShell-School/05_AdvancedCmdlets

Name           : demo.txt
Length         : 12
CreationTime   : 13/02/2021 18:56:57
LastWriteTime  : 13/02/2021 18:56:57
LastAccessTime : 13/02/2021 18:56:57
Mode           : -----
LinkType       : 
Target         : 
VersionInfo    : File:             /home/kmranrg/Documents/kan_work/PowerShell-School/05_AdvancedCmdlets/demo.txt
                 InternalName:     
                 OriginalFilename: 
                 FileVersion:      
                 FileDescription:  
                 Product:          
                 ProductVersion:   
                 Debug:            False
                 Patched:          False
                 PreRelease:       False
                 PrivateBuild:     False
                 SpecialBuild:     False
                 Language:         
                 

Name           : fileDemo1.txt
Length         : 15
CreationTime   : 13/02/2021 18:56:57
LastWriteTime  : 13/02/2021 18:56:57
LastAccessTime : 13/02/2021 18:56:57
Mode           : -----
LinkType       : 
Target         : 
VersionInfo    : File:             /home/kmranrg/Documents/kan_work/PowerShell-School/05_AdvancedCmdlets/fileDemo1.txt
                 InternalName:     
                 OriginalFilename: 
                 FileVersion:      
                 FileDescription:  
                 Product:          
                 ProductVersion:   
                 Debug:            False
                 Patched:          False
                 PreRelease:       False
                 PrivateBuild:     False
                 SpecialBuild:     False
                 Language:         
                 

Name           : fileDemo2.txt
Length         : 27
CreationTime   : 13/02/2021 18:56:57
LastWriteTime  : 13/02/2021 18:56:57
LastAccessTime : 13/02/2021 18:56:57
Mode           : -----
LinkType       : 
Target         : 
VersionInfo    : File:             /home/kmranrg/Documents/kan_work/PowerShell-School/05_AdvancedCmdlets/fileDemo2.txt
                 InternalName:     
                 OriginalFilename: 
                 FileVersion:      
                 FileDescription:  
                 Product:          
                 ProductVersion:   
                 Debug:            False
                 Patched:          False
                 PreRelease:       False
                 PrivateBuild:     False
                 SpecialBuild:     False
                 Language:         
                 


9) Print name of all the text files or folders of the current directory

    Directory: /home/kmranrg/Documents/kan_work/PowerShell-School/05_AdvancedCmdlets

demo.txt                                                         fileDemo1.txt
fileDemo2.txt                                                    

10) Print the size of all the text files of the current directory

12                                                               15
27                                                               

11) Get all the processess starting with p

 NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
 ------    -----      -----     ------      --  -- -----------
      0     0.00       0.00       0.00     104   0 pm_wq
      0     1.54       6.55       2.85     831 831 polkitd
      0     1.79       4.27       0.64    1117 …17 postgres
      0     1.98       0.61       0.01    1294 …94 postgres
      0     1.91       0.11       0.54    1295 …95 postgres
      0     1.91       0.51       0.51    1296 …96 postgres
      0     2.01       1.70       0.34    1297 …97 postgres
      0     1.83       0.23       0.39    1298 …98 postgres
      0     2.03       0.89       0.02    1299 …99 postgres
      0     1.71       9.39   1,682.96    2310 …10 pulseaudio
      0     0.00     165.86     664.05    7838 …38 pwsh
      0     0.00      37.34      13.78    7917 …15 pwsh
      0     0.00      89.23       0.93   35877 …38 pwsh
      0    15.35      15.92       1.01   12857 820 python3
= 12) Print name of all the items presnt in current directory in a column
demo.txt
fileDemo1.txt
fileDemo2.txt
source.ps1
13) Divide 1000, 2000 and 3000 by 100 and print them in a column
10
20
30
14) Split the string from each fullstop
Kumar
Anurag
Instagram
ID
kmranrg
15) Print Hello and then wait for 5 seconds and then print World
Hello
World
16) Print Hello and then wait for 1000 milli-seconds and then print World
Hello
World
17) Take first and last name from user and wish Good Morning!
Enter your first name: Kumar 
Enter your last name: Anurag
Good Morning! Kumar Anurag, nice to meet you.
18) Select-Object

ProcessName : writeback
Id          : 43
WS          : 0


ProcessName : xdg-document-portal
Id          : 2814
WS          : 1486848


ProcessName : xdg-permission-store
Id          : 2603
WS          : 0


ProcessName : Xorg
Id          : 2394
WS          : 37744640


ProcessName : zswap-shrink
Id          : 126
WS          : 0

a
b
c
A
19) Sort-Object
      0     0.00     243.64   1,192.92    6992 …51 code
      0     6.04     288.82   6,154.94    6920 …51 chrome --type=renderer --field-trial-handle=16915305169441437957,168151303038…
      0    13.36     295.22     841.47    4752 …51 chrome
      0   114.62     331.43      34.27    2801 …37 snap-store
      0     5.80     485.11   1,192.22   24942 …51 chrome --type=renderer --field-trial-handle=16915305169441437957,168151303038…
a
a
a
A
B
b
b
c
c
20) Print a warning message: Do Not Touch!
WARNING: Do Not Touch!
21) Write-Host
1, --> 3, --> 5, --> 7, --> 9, --> 11
Bye!
22) Invoke-Item
23) Invoke-Expression
Get-Process | Select-Object -Last 5
      0     0.00       0.00       0.00      43   0 writeback
      0     0.44       1.42       1.19    2814 …14 xdg-document-portal
      0     0.61       0.00       0.00    2603 …03 xdg-permission-store
      0    17.37      36.00     961.26    2394 …92 Xorg
      0     0.00       0.00       0.00     126   0 zswap-shrink
24) Calculate the time taken by this command: Write-Host Hello World
Hello World

Ticks             : 10542
Days              : 0
Hours             : 0
Milliseconds      : 1
Minutes           : 0
Seconds           : 0
TotalDays         : 1.22013888888889E-08
TotalHours        : 2.92833333333333E-07
TotalMilliseconds : 1.0542
TotalMinutes      : 1.757E-05
TotalSeconds      : 0.0010542

25) Execute the just last command
26) Print all the commands used in current session
27) Add the last 5 commands into current history of commands
28) Display the culture of OS

Parent                         : en
LCID                           : 2057
KeyboardLayoutId               : 2057
Name                           : en-GB
IetfLanguageTag                : en-GB
DisplayName                    : English (United Kingdom)
NativeName                     : English (United Kingdom)
EnglishName                    : English (United Kingdom)
TwoLetterISOLanguageName       : en
ThreeLetterISOLanguageName     : eng
ThreeLetterWindowsLanguageName : ENG
CompareInfo                    : CompareInfo - en-GB
TextInfo                       : TextInfo - en-GB
IsNeutralCulture               : False
CultureTypes                   : SpecificCultures
NumberFormat                   : System.Globalization.NumberFormatInfo
DateTimeFormat                 : System.Globalization.DateTimeFormatInfo
Calendar                       : System.Globalization.GregorianCalendar
OptionalCalendars              : {System.Globalization.GregorianCalendar}
UseUserOverride                : True
IsReadOnly                     : True
#>