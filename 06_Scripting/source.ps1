<#

Theory:

1) Creating a variable : Variable name should start with $ and can contain
                        alphanumeric characters and underscore in their names.

2) Get-Member : This cmdlet can tell the type of variable being used.
#>

<#
Features of PowerShell:

1) Cmdlets − Cmdlets perform common system administration tasks, for example
             managing the registry, services, processes, event logs, and using
             Windows Management Instrumentation (WMI).

2) Task oriented − PowerShell scripting language is task based and provide
                   supports for existing scripts and command-line tools.

3) Consistent design − As cmdlets and system data stores use common syntax and
                       have common naming conventions, data sharing is easy. The output
                       from one cmdlet can be pipelined to another cmdlet without any
                       manipulation.

4) Simple to Use − Simplified, command-based navigation lets users navigate the registry
                   and other data stores similar to the file system navigation.

5) Object based − PowerShell possesses powerful object manipulation capabilities. Objects
                  can be sent to other tools or databases directly.

6) Extensible interface − PowerShell is customizable as independent software vendors and
                           enterprise developers can build custom tools and utilities using
                           PowerShell to administer their software.
#>

Write-Host "1) Print the current directory path"
$location = Get-Location
Write-Host $location

Write-Host "2) Print the type of variable"
$location | Get-Member

<#
OUTPUT:

1) Print the current directory path
/home/kmranrg/Documents/kan_work/PowerShell-School/06_Scripting
2) Print the type of variable

   TypeName: System.Management.Automation.PathInfo

Name         MemberType Definition
----         ---------- ----------
Equals       Method     bool Equals(System.Object obj)
GetHashCode  Method     int GetHashCode()
GetType      Method     type GetType()
ToString     Method     string ToString()
Drive        Property   System.Management.Automation.PSDriveInfo Drive {get;}
Path         Property   string Path {get;}
Provider     Property   System.Management.Automation.ProviderInfo Provider {get;}
ProviderPath Property   string ProviderPath {get;}
#>