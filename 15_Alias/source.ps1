<#
Theory:

1) PowerShell Alias : is another name for the cmdlet or for any command element.
2) New-Alias : cmdlet is used to create a new alias.
3) Get-Alias : cmdlet is used to get all the alias present in current session of powershell.
#>

# Creating Alias
Write-Host "1) Create a new alias for the Get-Help cmdlet"
New-Alias -Name Help-Anurag -Value Get-Help
Write-Host "1.1) ----------"
Help-Anurag
Write-Host "1.2) ----------"
Help-Anurag Get-Process
Write-Host "1.3) ----------"
Help-Anurag Sort-Object
<#
KNOWLEDGE CLOUD:

PowerShell Command: Get-Help Sort-Object -Online

Description:

The above command will launch the browser and
will open the official web page for this cmdlet
#>
Write-Host "1.4) ----------"
Help-Anurag Write-Host

# Getting Alias
Write-Host "2) Print all the alias present in the current session of the powershell"
$store = Get-Alias
Write-Host "->"$store

<#
OUTPUT:

1) Create a new alias for the Get-Help cmdlet
1.1) ----------

TOPIC
    PowerShell Help System

SHORT DESCRIPTION
    Displays help about PowerShell cmdlets and concepts.

LONG DESCRIPTION
    PowerShell Help describes PowerShell cmdlets, functions, scripts, and
    modules, and explains concepts, including the elements of the PowerShell
    language.

    PowerShell does not include help files, but you can read the help topics
    online, or use the Update-Help cmdlet to download help files to your
    computer and then use the Get-Help cmdlet to display the help topics at
    the command line.

    You can also use the Update-Help cmdlet to download updated help files
    as they are released so that your local help content is never obsolete.

    Without help files, Get-Help displays auto-generated help for cmdlets,
    functions, and scripts.


  ONLINE HELP
    You can find help for PowerShell online at
    https://go.microsoft.com/fwlink/?LinkID=108518.

    To open online help for any cmdlet or function, type:

        Get-Help <cmdlet-name> -Online

  UPDATE-HELP
    To download and install help files on your computer:

       1. Start PowerShell with the "Run as administrator" option.
       2. Type:

          Update-Help

    After the help files are installed, you can use the Get-Help cmdlet to
    display the help topics. You can also use the Update-Help cmdlet to
    download updated help files so that your local help files are always
    up-to-date.

    For more information about the Update-Help cmdlet, type:

       Get-Help Update-Help -Online

    or go to: https://go.microsoft.com/fwlink/?LinkID=210614


  GET-HELP
    The Get-Help cmdlet displays help at the command line from content in
    help files on your computer. Without help files, Get-Help displays basic
    help about cmdlets and functions. You can also use Get-Help to display
    online help for cmdlets and functions.

    To get help for a cmdlet, type:

        Get-Help <cmdlet-name>

    To get online help, type:

        Get-Help <cmdlet-name> -Online

    The titles of conceptual topics begin with "About_". To get help for a
    concept or language element, type:

        Get-Help About_<topic-name>

    To search for a word or phrase in all help files, type:

        Get-Help <search-term>

    For more information about the Get-Help cmdlet, type:

        Get-Help Get-Help -Online

    or go to: https://go.microsoft.com/fwlink/?LinkID=113316


  EXAMPLES:
      Save-Help              : Download help files from the internet and save
                               them on a file share.

      Update-Help            : Downloads and installs help files from the
                               internet or a file share.

      Get-Help Get-Process   : Displays help about the Get-Process cmdlet.

      Get-Help Get-Process -Online
                             : Opens online help for the Get-Process cmdlet.

      Help Get-Process       : Displays help about Get-Process one page at a
                               time.
      Get-Process -?         : Displays help about the Get-Process cmdlet.

      Get-Help About_Modules : Displays help about PowerShell modules.

      Get-Help remoting      : Searches the help topics for the word "remoting."

  SEE ALSO:
      about_Updatable_Help
      Get-Help
      Save-Help
      Update-Help


1.2) ----------

NAME
    Get-Process
    
SYNTAX
    Get-Process [[-Name] <string[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]
    
    Get-Process [[-Name] <string[]>] -IncludeUserName [<CommonParameters>]
    
    Get-Process -Id <int[]> -IncludeUserName [<CommonParameters>]
    
    Get-Process -Id <int[]> [-Module] [-FileVersionInfo] [<CommonParameters>]
    
    Get-Process -InputObject <Process[]> -IncludeUserName [<CommonParameters>]
    
    Get-Process -InputObject <Process[]> [-Module] [-FileVersionInfo] [<CommonParameters>]
    

ALIASES
    gps
    

REMARKS
    Get-Help cannot find the Help files for this cmdlet on this computer. It is displaying only partial help.
        -- To download and install Help files for the module that includes this cmdlet, use Update-Help.
        -- To view the Help topic for this cmdlet online, type: "Get-Help Get-Process -Online" or
           go to https://go.microsoft.com/fwlink/?LinkID=2096814.

1.3) ----------
NAME
    Sort-Object
    
SYNTAX
    Sort-Object [[-Property] <Object[]>] [-Stable] [-Descending] [-Unique] [-InputObject <psobject>] [-Culture <string>] 
    [-CaseSensitive] [<CommonParameters>]
    
    Sort-Object [[-Property] <Object[]>] -Top <int> [-Descending] [-Unique] [-InputObject <psobject>] [-Culture <string>] 
    [-CaseSensitive] [<CommonParameters>]
    
    Sort-Object [[-Property] <Object[]>] -Bottom <int> [-Descending] [-Unique] [-InputObject <psobject>] [-Culture <string>] 
    [-CaseSensitive] [<CommonParameters>]
    

ALIASES
    None
    

REMARKS
    Get-Help cannot find the Help files for this cmdlet on this computer. It is displaying only partial help.
        -- To download and install Help files for the module that includes this cmdlet, use Update-Help.
        -- To view the Help topic for this cmdlet online, type: "Get-Help Sort-Object -Online" or
           go to https://go.microsoft.com/fwlink/?LinkID=2097038.

1.4) ----------
NAME
    Write-Host
    
SYNTAX
    Write-Host [[-Object] <Object>] [-NoNewline] [-Separator <Object>] [-ForegroundColor {Black | DarkBlue | DarkGreen | 
    DarkCyan | DarkRed | DarkMagenta | DarkYellow | Gray | DarkGray | Blue | Green | Cyan | Red | Magenta | Yellow | White}] 
    [-BackgroundColor {Black | DarkBlue | DarkGreen | DarkCyan | DarkRed | DarkMagenta | DarkYellow | Gray | DarkGray | Blue | 
    Green | Cyan | Red | Magenta | Yellow | White}] [<CommonParameters>]
    

ALIASES
    None
    

REMARKS
    Get-Help cannot find the Help files for this cmdlet on this computer. It is displaying only partial help.
        -- To download and install Help files for the module that includes this cmdlet, use Update-Help.
        -- To view the Help topic for this cmdlet online, type: "Get-Help Write-Host -Online" or
           go to https://go.microsoft.com/fwlink/?LinkID=2097137.

2) Print all the alias present in the current session of the powershell
-> ? % cd chdir clc clhy cli clp cls clv copy cpi cvpa dbp del dir ebp echo epal epcsv erase etsn exsn fc fhx fl foreach ft fw gal gbp gc gcb gci gcm gcs gdr gerr ghy gi gjb gl gm gmo gp gps gpv group gsn gtz gu gv h Help-Anurag history icm iex ihy ii ipal ipcsv ipmo irm iwr md measure mi move mp nal ndr ni nmo nsn nv oh popd pushd pwd r rbp rcjb rcsn rd rdr ren ri rjb rmo rni rnp rp rsn rv rvpa sajb sal saps sbp scb select set si sl sls sp spjb spps sv type where wjb
#>