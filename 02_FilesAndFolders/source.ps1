<#
Theory:

1) `New_Item` : cmdlet is used to create a directory by passing the path using `-Path` as path 
           of the directory and `-ItemType` as Directory

2) New-Item : cmdlet is used to create a file by passing the path using -Path as path of the
            file and -ItemType as File.

3) Copy-Item : cmdlet is used to copy a directory by passing the path of the directory to be
             copied and destination path where the folder is to be copied.

4) Copy-Item : cmdlet is used to copy a file by passing the path of the file to be copied and
               destination path where the file is to be copied.

5) Remove-Item : cmdlet is used to delete a directory by passing the path of the directory
                 to be deleted.

6) Remove-Item : cmdlet is used to delete a file by passing the path of the file to be deleted.

7) Move-Item : cmdlet is used to move a directory by passing the path of the directory to be
               moved and destination path where the folder is to be moved.

8) Move-Item : cmdlet is used to move a file by passing the path of the file to be moved and
               destination path where the file is to be moved.

9) Rename-Item : cmdlet is used to rename a folder by passing the path of the folder to be
                 renamed and target name.
            
10) Rename-Item : cmdlet is used to rename a File by passing the path of the file to be renamed
                  and target name.

11) Get-Content : cmdlet is used to retrieve content of a file as an array.

12) Test-Path : cmdlet is used to check existence of a folder.

13) Test-Path : cmdlet is used to check existence of a file.
#>

# 1) let's create a folder in `/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/Test_Folder` with name `Test_Folder`
New-Item -Path '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/Test_Folder' -ItemType Directory

# 2) creating a file
New-Item -Path '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/Test_File.txt' -ItemType File

# 3) copying a folder : but not the folder contents
Copy-Item -Path '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/demo' -Destination '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/Test_Folder2'
# for copying contents of parent folder as well as sub folder
Copy-Item -Path '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/demo/*' -Recurse -Destination '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/new_demo' -PassThru

# 4) copying a file: only one file from one folder to another
Copy-Item -Path '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/demo/cute.jpg' -Destination '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/new_file1.jpg'
# for copying all jpg files only including from parent folder as well as sub folders
Copy-Item -Filter *.jpg -Path '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/demo' -Recurse -Destination '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/my_files/'

# 5) deleting a folder with all it's files and sub-directories
Remove-Item '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/demo_1' -Recurse

# 6) deleting a file
Remove-Item '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/instagram.txt'

# 7) moving a folder
Move-Item '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/demo' '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/fresh_demo'

# 8) moving a file
Move-Item '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/move/instagram1.txt' '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/'

# 9) renaming a folder
Rename-Item '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/rename' '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/rename1'

# 10) renaming a file
Rename-Item '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/test.txt' '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/test1.txt'

# 11) getting the content of a file
Get-Content '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/twitter.txt'

# 12) getting the size of the content of the file
(Get-Content '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/twitter.txt').Length

# 13) checking the existence of a folder, we will get `True` if folder exists otherwise `False`
Test-Path '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/rename12'

# 14) checking the existence of a file, we will get `True` if folder exists otherwise `False`
Test-Path '/home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/twitter.txt'

<#
OUTPUT:


    Directory: /home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d----          11/02/2021    20:16                Test_Folder
-----          11/02/2021    20:16              0 Test_File.txt
d----          11/02/2021    20:16                new_demo

    Directory: /home/kmranrg/Documents/kan_work/PowerShell-School/02_FilesAndFolders/new_demo

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-----          02/02/2021    13:37           3411 car.png
-----          15/01/2021    19:22          49161 snapchat_pic.jpg
-----          01/02/2021    15:01         366440 anurag.jpeg
-----          07/01/2021    19:19         110773 cute.jpg
-----          11/01/2021    21:03         533671 picture.jpg
ID: kmranrg
11
False
True

#>