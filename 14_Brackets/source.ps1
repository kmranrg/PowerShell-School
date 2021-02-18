<#
Theory:

Powershell supports three types of brackets.
  1) Parenthesis brackets − ()
  2) Braces brackets − {}
  3) Square brackets − []
#>

Write-Host "1) Parenthesis Brackets"
<#
Parenthesis brackets:

This type of brackets is used to
  1) pass arguments
  2) enclose multiple set of instructions
  3) resolve ambiguity
  4) create array
#>
$MyArray = @("Anurag", "1000", 2000)
foreach ($element in $MyArray) {
  Write-Host "-> $element ->"$element.GetType()
}

Write-Host "2) Braces Brackets"
<#
Braces brackets:

This type of brackets is used to
  1) enclose statements
  2) block commands
#>
$i = 10
if($i -lt 20){
  Write-Host "-> 10 is lesser than 20"
}

Write-Host "3) Square Brackets"
<#
Square brackets:

This type of brackets is used to
  1) access to array
  2) access to hashtables
  3) filter using regular expression
#>
Write-Host "Example 1: Accessing Array"
$MyArray = @("Anurag", "1000", 2000)
for ($i = 0; $i -lt $MyArray.Length; $i++) {
  Write-Host "->"$MyArray[$i]
  Write-Host "-->"$MyArray[$i].GetType()
}
Write-Host "Example 2: Print all processes names starting from r till t (i.e. starting from r,s and t) and at the end print total no of such processes"
Get-Process [r-t]*
$num = (Get-Process [r-t]*).Length
Write-Host "Total no of such processes are: $num"

<#
OUTPUT:

1) Parenthesis Brackets
-> Anurag -> System.String
-> 1000 -> System.String
-> 2000 -> System.Int32
2) Braces Brackets
-> 10 is lesser than 20
3) Square Brackets
Example 1: Accessing Array
-> Anurag
--> System.String
-> 1000
--> System.String
-> 2000
--> System.Int32
Example 2: Print all processes names starting from r till t (i.e. starting from r,s and t) and at the end print total no of such processes

 NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
 ------    -----      -----     ------      --  -- -----------
      0     0.00       0.00       0.00       3   0 rcu_gp
      0     0.00       0.00       0.00       4   0 rcu_par_gp
      0     0.00       0.00     303.21      11   0 rcu_sched
      0     0.00       0.00       0.00      35   0 rcu_tasks_kthre
      0     0.00       0.00       0.00      36   0 rcu_tasks_rude_
      0     0.00       0.00       0.00      37   0 rcu_tasks_trace
      0     0.00       0.00       0.00     206   0 rmi4-poller
      0     0.22       5.07       1.79     849 849 rsyslogd
      0     0.00       2.86       2.32    1314 …14 rtkit-daemon
      0     0.00       0.00       0.00     191   0 scsi_eh_0
      0     0.00       0.00       0.00     193   0 scsi_eh_1
      0     0.00       0.00       0.00     192   0 scsi_tmf_0
      0     0.00       0.00       0.00     194   0 scsi_tmf_1
      0     0.00      36.77       1.19   58564 …46 seahorse
      0     0.00       0.53       0.00    6709 …83 sh
      0     0.00     571.54      37.18    2222 …68 snap-store
      0     1.14      24.26      66.31     851 851 snapd
      0     0.00       0.45       0.74    1927 …27 ssh-agent
      0     0.02       5.54       0.08     852 852 switcheroo-control
      0     0.59      12.33       9.80       1   1 systemd
      0     0.85       9.51       2.91    1734 …34 systemd
      0     0.00      52.80       9.64     283 283 systemd-journald
      0     0.05       7.88       4.37     855 855 systemd-logind
      0     0.88      13.93      54.29     796 796 systemd-resolved
      0     0.02       6.16       0.73     797 797 systemd-timesyncd
      0     0.77       6.92       3.70     367 367 systemd-udevd
      0     0.16       8.44     253.92    1294 …93 teamviewerd
      0     0.01       9.40      13.71     856 856 thermald
      0     0.00       0.00       0.00      97   0 tpm_dev_wq
      0     5.51      17.88       3.40    1743 …43 tracker-miner-fs
Total no of such processes are: 30
#>