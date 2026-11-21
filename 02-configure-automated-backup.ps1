# Enable daily automated backup at 23:00 to E: drive
wbadmin enable backup -addtarget:E: -include:C:\CinemaData -schedule:23:00 -quiet

# Run immediate on-demand backup
wbadmin start backup -backupTarget:E: -include:C:\CinemaData -quiet

# Verify policy and backup versions
Get-WBPolicy
wbadmin get versions -backupTarget:E:
