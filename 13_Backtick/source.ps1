<#
Theory:

1) Backtick (`) operator is also called word-wrap operator.
2) It allows a command to be written in multiple lines.
3) It can be used for new line (`n) or tab (`t) in sentences as well.
#>

Write-Host "1) Backtick Use for writing commands in multiple lines:"
Get-Process | `
Sort-Object Id

Write-Host "2) Use of Backtick in new line:"
Write-Host "Kumar`nAnurag"

Write-Host "3) Use of Backtick for putting tab space:"
Write-Host "Kumar`tAnurag"

<#
OUTPUT:

1) Backtick Use for writing commands in multiple lines:

 NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
 ------    -----      -----     ------      --  -- -----------
      0     0.59      12.33       9.78       1   1 systemd
      0     0.00       0.00       0.08       2   0 kthreadd
      0     0.00       0.00       0.00       3   0 rcu_gp
      0     0.00       0.00       0.00       4   0 rcu_par_gp
      0     0.00       0.00       0.00       6   0 kworker/0:0H-kblockd
      0     0.00       0.00       0.00       9   0 mm_percpu_wq
      0     0.00       0.00       3.88      10   0 ksoftirqd/0
      0     0.00       0.00     299.06      11   0 rcu_sched
      0     0.00       0.00       0.73      12   0 migration/0
      0     0.00       0.00       0.00      13   0 idle_inject/0
      0     0.00       0.00       0.00      14   0 cpuhp/0
      0     0.00       0.00       0.00      15   0 cpuhp/1
      0     0.00       0.00       0.00      16   0 idle_inject/1
      0     0.00       0.00       0.81      17   0 migration/1
      0     0.00       0.00       7.24      18   0 ksoftirqd/1
      0     0.00       0.00       0.00      20   0 kworker/1:0H-kblockd
      0     0.00       0.00       0.00      21   0 cpuhp/2
      0     0.00       0.00       0.00      22   0 idle_inject/2
      0     0.00       0.00       0.72      23   0 migration/2
      0     0.00       0.00       1.51      24   0 ksoftirqd/2
      0     0.00       0.00       0.00      26   0 kworker/2:0H-kblockd
      0     0.00       0.00       0.00      27   0 cpuhp/3
      0     0.00       0.00       0.00      28   0 idle_inject/3
      0     0.00       0.00       0.76      29   0 migration/3
      0     0.00       0.00       1.28      30   0 ksoftirqd/3
      0     0.00       0.00       0.00      32   0 kworker/3:0H-kblockd
      0     0.00       0.00       0.00      33   0 kdevtmpfs
      0     0.00       0.00       0.00      34   0 netns
      0     0.00       0.00       0.00      35   0 rcu_tasks_kthre
      0     0.00       0.00       0.00      36   0 rcu_tasks_rude_
      0     0.00       0.00       0.00      37   0 rcu_tasks_trace
      0     0.00       0.00       0.01      38   0 kauditd
      0     0.00       0.00       0.29      41   0 khungtaskd
      0     0.00       0.00       0.00      42   0 oom_reaper
      0     0.00       0.00       0.00      43   0 writeback
      0     0.00       0.00       0.01      44   0 kcompactd0
      0     0.00       0.00       0.00      45   0 ksmd
      0     0.00       0.00       0.00      46   0 khugepaged
      0     0.00       0.00       0.00      93   0 kintegrityd
      0     0.00       0.00       0.00      94   0 kblockd
      0     0.00       0.00       0.00      95   0 blkcg_punt_bio
      0     0.00       0.00       0.00      97   0 tpm_dev_wq
      0     0.00       0.00       0.00      98   0 ata_sff
      0     0.00       0.00       0.00      99   0 md
      0     0.00       0.00       0.00     100   0 edac-poller
      0     0.00       0.00       0.00     101   0 devfreq_wq
      0     0.00       0.00       0.00     103   0 watchdogd
      0     0.00       0.00       0.00     104   0 pm_wq
      0     0.00       0.00       4.96     106   0 kswapd0
      0     0.00       0.00       0.00     107   0 ecryptfs-kthrea
      0     0.00       0.00       0.00     109   0 kthrotld
      0     0.00       0.00       0.00     110   0 acpi_thermal_pm
      0     0.00       0.00       0.00     112   0 vfio-irqfd-clea
      0     0.00       0.00       0.00     114   0 ipv6_addrconf
      0     0.00       0.00       0.00     123   0 kstrp
      0     0.00       0.00       0.00     126   0 zswap-shrink
      0     0.00       0.00       0.00     134   0 charger_manager
      0     0.00       0.00       0.00     191   0 scsi_eh_0
      0     0.00       0.00       0.00     192   0 scsi_tmf_0
      0     0.00       0.00       0.00     193   0 scsi_eh_1
      0     0.00       0.00       0.00     194   0 scsi_tmf_1
      0     0.00       0.00       9.06     199   0 irq/51-DLLC6C2:
      0     0.00       0.00      14.01     202   0 kworker/2:1H-events_highpri
      0     0.00       0.00       0.00     206   0 rmi4-poller
      0     0.00       0.00       4.15     207   0 irq/127-i2c_hid
      0     0.00       0.00      17.98     208   0 kworker/0:1H-events_highpri
      0     0.00       0.00      12.70     212   0 kworker/1:1H-events_highpri
      0     0.00       0.00      19.89     238   0 jbd2/sda7-8
      0     0.00       0.00       0.00     239   0 ext4-rsv-conver
      0     0.00       0.00      13.85     271   0 kworker/3:1H-events_highpri
      0     0.00      52.68       9.56     283 283 systemd-journald
      0     0.00       0.00       0.00     317   0 loop0
      0     0.00       0.00       0.00     318   0 loop1
      0     0.00       0.00       0.00     319   0 loop2
      0     0.00       0.00       0.00     321   0 loop3
      0     0.00       0.00       0.00     323   0 loop4
      0     0.00       0.00       0.00     325   0 loop5
      0     0.00       0.00       0.00     327   0 loop6
      0     0.00       0.00       0.03     329   0 loop7
      0     0.00       0.00       0.00     331   0 loop8
      0     0.00       0.00       0.00     334   0 loop9
      0     0.00       0.00       0.03     335   0 loop10
      0     0.00       0.00       0.00     337   0 loop11
      0     0.00       0.00       0.04     340   0 loop12
      0     0.00       0.00       0.00     342   0 loop13
      0     0.00       0.00       0.11     344   0 loop14
      0     0.00       0.00       0.00     346   0 loop15
      0     0.00       0.00       0.07     348   0 loop16
      0     0.00       0.00       0.00     350   0 loop17
      0     0.00       0.00       0.01     352   0 loop18
      0     0.00       0.00       0.26     355   0 loop19
      0     0.00       0.00       0.00     358   0 loop21
      0     0.00       0.00       0.11     360   0 loop22
      0     0.00       0.00       0.00     363   0 loop23
      0     0.00       0.00       0.00     364   0 loop24
      0     0.77       6.92       3.70     367 367 systemd-udevd
      0     0.00       0.00       0.00     368   0 loop25
      0     0.00       0.00       0.00     369   0 loop26
      0     0.00       0.00       0.00     420   0 cfg80211
      0     0.00       0.00     608.34     437   0 irq/135-iwlwifi
      0     0.00       0.00       0.00     480   0 cryptd
      0     0.00       0.00       0.00     646   0 kmemstick
      0     0.88      13.93      53.49     796 796 systemd-resolved
      0     0.02       6.16       0.73     797 797 systemd-timesyncd
      0     0.09       7.31       4.01     829 829 accounts-daemon
      0     0.00       0.76       8.09     830 830 acpid
      0     0.00       3.11       8.56     832 832 avahi-daemon: running [kmranrg-ubuntu.local]
      0     0.00       4.34       0.13     833 833 bluetoothd
      0     0.00       2.95       0.50     834 834 cron
      0     0.17       6.29     503.14     836 836 dbus-daemon
      0     0.50      18.52     619.21     837 837 NetworkManager
      0     0.00       3.71      19.46     844 844 irqbalance
      0     1.31      17.73       0.33     845 845 networkd-dispatcher
      0     0.34      11.00       4.21     847 847 polkitd
      0     0.22       5.07       1.79     849 849 rsyslogd
      0     1.14      24.26      66.00     851 851 snapd
      0     0.02       5.54       0.08     852 852 switcheroo-control
      0     0.05       7.88       4.18     855 855 systemd-logind
      0     0.01       9.40      13.52     856 856 thermald
      0     0.39      12.41      18.26     857 857 udisksd
      0     0.07       7.05     105.99     859 859 wpa_supplicant
      0     0.02       0.31       0.00     903 832 avahi-daemon: chroot helper
      0     0.00       0.00       0.00     940   0 iprt-VBoxWQueue
      0     0.00       0.00       0.05     941   0 iprt-VBoxTscThr
      0     0.11       8.86       0.54     993 993 ModemManager
      0     1.31      20.27       0.28    1016 …16 unattended-upgrade-shutdown
      0     0.56      17.74      16.74    1018 …18 anydesk
      0     0.35       7.84       0.10    1053 …53 gdm3
      0     0.20       6.11       8.81    1100 …00 apache2
      0     0.00      26.81       3.19    1124 …24 postgres
      0     0.31      19.57       0.96    1171 …71 whoopsie
      0     0.02       0.41       9.98    1180 …80 kerneloops
      0     0.00       0.44       9.87    1182 …82 kerneloops
      0     0.16       8.44     250.63    1294 …93 teamviewerd
      0     0.00       7.31       0.08    1297 …97 postgres
      0     0.00       5.16       2.73    1298 …98 postgres
      0     0.00       9.41       2.70    1299 …99 postgres
      0     0.00       8.03       1.87    1300 …00 postgres
      0     0.00       4.32       2.29    1301 …01 postgres
      0     0.00       6.18       0.12    1302 …02 postgres
      0     0.00       2.86       2.29    1314 …14 rtkit-daemon
      0     0.10       9.30      15.81    1431 …31 upowerd
      0     0.72      20.18     494.92    1523 …23 geoclue
      0     0.01       9.92       0.13    1704 …53 gdm-session-wor
      0     0.69      13.02       0.35    1720 …20 colord
      0     0.85       9.51       2.91    1734 …34 systemd
      0     1.08       2.66       0.00    1735 …34 (sd-pam)
      0     3.30      15.90     121.52    1740 …40 appimagelauncherd
      0     1.74      16.66  15,910.69    1741 …41 pulseaudio
      0     5.51      17.88       3.40    1743 …43 tracker-miner-fs
      0     0.20       5.71      19.63    1746 …46 dbus-daemon
      0     0.44       6.88       0.17    1762 …62 gvfsd
      0     0.47       5.36       0.02    1767 …62 gvfsd-fuse
      0     0.52       8.38      11.04    1774 …74 gvfs-udisks2-volume-monitor
      0     0.29       5.58       0.07    1780 …80 gvfs-goa-volume-monitor
      0     5.21      25.52       0.86    1784 …46 goa-daemon
      0     0.79       6.68       2.39    1791 …46 goa-identity-service
      0     0.57       7.90       6.74    1797 …97 gvfs-afc-volume-monitor
      0     0.38       5.83       0.06    1802 …02 gvfs-gphoto2-volume-monitor
      0     0.22       5.53       0.06    1806 …06 gvfs-mtp-volume-monitor
      0     0.00       0.00       0.00    1815   0 krfcommd
      0     0.43       7.19       4.56    1817 …16 gnome-keyring-daemon
      0     0.53       6.46       0.02    1822 …46 gnome-keyring-daemon
      0     0.35       5.87       0.01    1826 …26 gdm-x-session
      0     9.57      66.90   6,008.91    1828 …26 Xorg
      0     0.00      12.04       0.14    1856 …26 gnome-session-binary
      0     0.00       0.45       0.73    1927 …27 ssh-agent
      0     0.42       5.96       0.02    1948 …48 at-spi-bus-launcher
      0     0.21       3.64       5.15    1953 …48 dbus-daemon
      0     0.44       3.80       0.01    1963 …63 gnome-session-ctl
      0     1.36      12.71       7.42    1968 …68 gnome-session-binary
      0    17.55     291.52   6,733.80    1983 …83 gnome-shell
      0     0.44       7.05       1.25    2006 …83 ibus-daemon
      0     0.43       6.07       0.01    2010 …83 ibus-dconf
      0     2.00      22.30       2.37    2011 …83 ibus-extension-gtk3
      0     1.48      17.41       1.19    2015 …83 ibus-x11
      0     0.23       7.99       3.53    2018 …46 ibus-portal
      0     0.47       6.56      24.17    2027 …48 at-spi2-registryd
      0     0.00       4.45       0.03    2031 …31 xdg-permission-store
      0     0.00      13.79       0.21    2036 …46 gnome-shell-calendar-server
      0     0.00      18.70       0.56    2045 …45 evolution-source-registry
      0     0.00      20.01       1.23    2053 …53 evolution-calendar-factory
      0     0.00      23.29       0.19    2057 …46 gjs
      0     0.00       5.94       0.35    2064 …46 dconf-service
      0     0.00       6.18       1.25    2070 …70 gsd-a11y-settings
      0     0.00      21.54       8.61    2071 …71 gsd-color
      0     0.00      13.36       1.29    2073 …73 gsd-datetime
      0     0.00       8.93      13.03    2076 …76 gsd-housekeeping
      0     0.00      19.75       2.56    2077 …77 gsd-keyboard
      0     0.00      24.70       8.29    2078 …78 gsd-media-keys
      0     0.00      22.89       3.88    2085 …85 gsd-power
      0     0.00       9.80       1.37    2087 …87 gsd-print-notifications
      0     0.00       5.88       1.66    2088 …88 gsd-rfkill
      0     0.00       5.68       1.27    2094 …94 gsd-screensaver-proxy
      0     0.00      10.05     139.83    2098 …98 gsd-sharing
      0     0.00       8.49       1.24    2099 …99 gsd-smartcard
      0     0.00       8.82       1.27    2100 …00 gsd-sound
      0     0.00       6.95       1.36    2101 …01 gsd-usb-protection
      0     0.00      19.08       2.61    2102 …02 gsd-wacom
      0     0.00       7.33       1.34    2103 …03 gsd-wwan
      0     0.00      20.28       3.54    2108 …08 gsd-xsettings
      0     0.00       6.00       0.12    2126 …68 gsd-disk-utility-notify
      0     0.00       6.73       0.29    2134 …83 ibus-engine-simple
      0     0.00      16.81       7.80    2136 …68 anydesk
      0     0.00      44.27       1.90    2142 …68 evolution-alarm-notify
      0     0.00      12.83       0.05    2199 …87 gsd-printer
      0     0.00     571.54      36.92    2222 …68 snap-store
      0     0.00       7.65       0.23    2236 …62 gvfsd-trash
      0     0.00       6.12       4.15    2248 …48 xdg-document-portal
      0     0.00      19.78       0.78    2308 …08 evolution-addressbook-factory
      0     0.00       6.74       0.20    4223 …23 gvfsd-metadata
      0     0.00      24.80       5.81    4228 …68 update-notifier
      0     0.00     340.16   7,356.06    4373 …83 chrome
      0     0.00       0.57       0.00    4379 …83 cat
      0     0.00       0.57       0.14    4380 …83 cat
      0     0.00      49.59       0.06    4383 …83 chrome --type=zygote --no-zygote-sandbox --enable-crash-reporter=acec0802-f20…
      0     0.00      50.32       0.04    4384 …83 chrome --type=zygote --enable-crash-reporter=acec0802-f203-4f1f-b4ae-75a61fa7…
      0     0.00       3.05       0.00    4385 …83 nacl_helper
      0     0.00      14.60       7.00    4388 …83 chrome --type=zygote --enable-crash-reporter=acec0802-f203-4f1f-b4ae-75a61fa7…
      0     0.00     120.23   3,860.55    4413 …83 chrome --type=utility --utility-sub-type=network.mojom.NetworkService --field…
      0     0.00      40.92      68.95    4437 …83 chrome --type=utility --utility-sub-type=storage.mojom.StorageService --field…
      0     0.00     159.67     330.67    4515 …83 chrome --type=renderer --field-trial-handle=414031419002980989,14887575439282…
      0     0.00      80.49       4.94    4522 …83 chrome --type=renderer --field-trial-handle=414031419002980989,14887575439282…
      0     0.00      80.83     325.70    4531 …83 chrome --type=renderer --field-trial-handle=414031419002980989,14887575439282…
      0     0.00      88.88       4.32    4703 …83 chrome --type=renderer --field-trial-handle=414031419002980989,14887575439282…
      0     0.00      27.52       0.43    4721 …83 chrome-gnome-shell
      0     0.00      66.33   9,403.90    4753 …83 chrome --type=utility --utility-sub-type=audio.mojom.AudioService --field-tri…
      0     0.00     106.41     293.68    6258 …83 code --no-sandbox --unity-launch
      0     0.00      19.16       0.04    6262 …83 code --type=zygote --no-zygote-sandbox --no-sandbox
      0     0.00      18.90       0.02    6263 …83 code --type=zygote --no-sandbox
      0     0.00      96.87     795.12    6285 …83 code --type=gpu-process --field-trial-handle=6818357098559608774,242681916807…
      0     0.00      26.95       9.34    6304 …83 code --type=utility --field-trial-handle=6818357098559608774,2426819168073572…
      0     0.00     290.64   2,968.97    6317 …83 code
      0     0.00      75.31      67.50    6578 …83 code
      0     0.00     136.90     226.87    6597 …83 code
      0     0.00      40.08       7.39    6605 …83 code
      0     0.00      44.20       7.05    6686 …83 code
      0     0.00       0.53       0.00    6709 …83 sh
      0     0.00     126.45      16.80    6710 …83 dart
      0     0.00       7.74       0.25    6762 …62 bash
      0     0.00     164.97   3,169.94    6911 …11 pwsh
      0     0.00       7.86       0.11    9035 …62 gvfsd-network
      0     0.00       7.82       0.08    9066 …62 gvfsd-dnssd
      0     0.00      11.30       8.74   10715 …15 xdg-desktop-portal
      0     0.00      21.21       5.87   10723 …23 xdg-desktop-portal-gtk
      0     0.00     133.98     118.72   19931 …83 chrome --type=renderer --field-trial-handle=414031419002980989,14887575439282…
      0     0.00      36.77       1.08   58564 …46 seahorse
      0     0.00      44.71       1.88   58565 …46 gnome-calendar
      0     0.00      61.47       1.75   58634 …46 gnome-todo
      0     0.00     193.55  10,475.55   75191 …83 chrome --type=gpu-process --field-trial-handle=414031419002980989,14887575439…
      0     0.00       0.00       0.00   81231   0 none
      0     0.00       8.53       0.01   85696 …53 gdm-session-wor
      0     0.00       0.00       0.13   96963   0 loop27
      0     0.00     108.26       6.44   98555 …83 chrome --type=renderer --field-trial-handle=414031419002980989,14887575439282…
      0     0.00     413.35     581.82   98689 …83 chrome --type=renderer --field-trial-handle=414031419002980989,14887575439282…
      0     0.00     113.68      18.23   98741 …83 chrome --type=renderer --field-trial-handle=414031419002980989,14887575439282…
      0     0.00       0.00       0.00  116016   0 irq/133-mei_me
      0     0.00       0.00       6.65  116393   0 kworker/u9:2+i915_flip
      0     0.00       0.00      15.77  118287   0 kworker/1:2-events
      0     0.00       0.00       1.77  121437   0 kworker/3:0-events
      0     0.00       0.00       0.48  121855   0 kworker/1:0-events
      0     0.00       0.00       2.31  122924   0 kworker/u9:1-rb_allocator
      0     0.00       0.00       0.78  123033   0 kworker/0:1-events
      0     0.00       0.00       0.00  123045   0 kworker/3:1-events
      0     0.00       0.00       0.00  123070   0 kworker/2:1-events
      0     0.00       0.00       0.65  123071   0 kworker/2:3-events
      0     0.00       8.66       0.05  123072 …72 cupsd
      0     0.00      12.29       0.06  123073 …73 cups-browsed
      0     0.17      10.56       0.15  123075 …00 apache2
      0     0.17      10.64       0.04  123076 …00 apache2
      0     0.17      10.76       0.04  123077 …00 apache2
      0     0.00       0.00       0.77  123176   0 kworker/u8:0-events_power_efficient
      0     0.00      51.30       0.07  123221 …83 chrome --type=renderer --field-trial-handle=414031419002980989,14887575439282…
      0     0.00       0.00       0.39  123611   0 kworker/u8:2-phy0
      0     0.00       0.00       0.15  124003   0 kworker/0:2-events
      0     0.00       0.00       0.00  124236   0 kworker/u9:0
      0     0.00       0.00       0.05  124245   0 kworker/u8:1-events_unbound
      0     0.00       0.00       0.00  124254   0 kworker/0:0
      0     0.00      84.84       0.85  124335 …11 pwsh
2) Use of Backtick in new line:
Kumar
Anurag
3) Use of Backtick for putting tab space:
Kumar   Anurag
#>