# Simulate disaster by deleting CinemaData files
Remove-Item -Path "C:\CinemaData\*" -Force

# Check available backup version identifier before restoring
wbadmin get versions -backupTarget:E:

# Restore files from backup (replace <VERSION_ID> with actual timestamp e.g. 11/21/2026-05:20)
# wbadmin start recovery -version:<VERSION_ID> -itemType:File -items:C:\CinemaData -backupTarget:E: -quiet
