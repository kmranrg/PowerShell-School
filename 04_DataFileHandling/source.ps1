<#
Theory:

1) New-Item : cmdlet is used to create a text file.

2) Set-Content : cmdlet to put content into it.

3) Get-Content : cmdlet is used to read content of a text file.

4) Clear-Content : cmdlet can be used to erase content of a txt, html, etc. file.

5) Add-Content : cmdlet can be used to append content of a any file.
#>

Write-Host "1) Creating a text file and Adding some content into it"
# creating a text file
New-Item 'new_file.txt'
# adding some content into the file
Set-Content 'new_file.txt' 'I am Anurag. My Instagram ID: kmranrg'

Write-Host "2) Reading a Text File and printing the length of characters stored in file"
Get-Content 'new_file.txt'
(Get-Content 'new_file.txt').Length # it will print the size the content inside the file

Write-Host "3) Creating an XML file and adding some content into it"
# creating an XML file
New-Item 'new_xml_file.xml' -ItemType File
# putting some content into it
Set-Content 'new_xml_file.xml' '<title>Hello World</title>'

Write-Host "4) Reading an XML file"
Get-Content 'new_xml_file.xml'

Write-Host "5) Creating CSV file and adding some content into it"
# creating CSV file
New-Item 'new_csv_file.csv' -ItemType File
# putting some content into it
Set-Content 'new_csv_file.csv' 'Anurag, Ria, Pooja'

Write-Host "6) Reading CSV file"
Get-Content "new_csv_file.csv"
(Get-Content "new_csv_file.csv").Length # it will print the size of content inside file

Write-Host "7) Creating HTML file and adding some content into it"
# creating HTML file
New-Item 'new_html_file.html' -ItemType File
# putting some content into it
Set-Content 'new_html_file.html' '<h1>Hello World</h1>'

Write-Host "8) Reading HTML file"
Get-Content 'new_html_file.html'

Write-Host "9) Creating an html file and then adding some content and finally clearing the data"
New-Item 'demo.html' -ItemType File
Set-Content 'demo.html' '<h1>Hello Anurag!</h1>'
Get-Content 'demo.html'
Clear-Content 'demo.html' # this will clear the file content
Get-Content 'demo.html' # it will not print anything as the data has been erased

Write-Host "10) Appending data to a file"
New-Item 'demo.txt' -ItemType File
Set-Content 'demo.txt' 'Hello'
Add-Content 'demo.txt' 'Anurag'
Get-Content 'demo.txt'
(Get-Content 'demo.txt').Length # it will print the total no of lines in file

<#
OUTPUT:

1) Creating a text file and Adding some content into it

    Directory: /home/kmranrg/Documents/kan_work/PowerShell-School/04_DataFileHandling

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-----          12/02/2021    16:15              0 new_file.txt
2) Reading a Text File and printing the length of characters stored in file
I am Anurag. My Instagram ID: kmranrg
37
3) Creating an XML file and adding some content into it
-----          12/02/2021    16:15              0 new_xml_file.xml
4) Reading an XML file
<title>Hello World</title>
5) Creating CSV file and adding some content into it
-----          12/02/2021    16:15              0 new_csv_file.csv
6) Reading CSV file
Anurag, Ria, Pooja
18
7) Creating HTML file and adding some content into it
-----          12/02/2021    16:15              0 new_html_file.html
8) Reading HTML file
<h1>Hello World</h1>
9) Creating an html file and then adding some content and finally clearing the data
-----          12/02/2021    16:15              0 demo.html
<h1>Hello Anurag!</h1>
10) Appending data to a file
-----          12/02/2021    16:15              0 demo.txt
Hello
Anurag
2
#>