# Create CinemaData directory and sample files
New-Item -Path "C:\CinemaData" -ItemType Directory -Force
New-Item -Path "C:\CinemaData\db.sql" -ItemType File -Value "Cinema Ticket Bookings Table" -Force
New-Item -Path "C:\CinemaData\list.csv" -ItemType File -Value "MovieID,Title,ShowTime`n101,Inception,20:00" -Force

# Install Windows Server Backup feature
Install-WindowsFeature -Name Windows-Server-Backup

# Format attached 20GB secondary disk as E:
New-Partition -DiskNumber 1 -UseMaximumSize -DriveLetter E | Format-Volume -FileSystem NTFS -Confirm:$false
