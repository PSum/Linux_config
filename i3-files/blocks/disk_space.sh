
#!/bin/bash

# Get disk usage information
disk_info=$(df -h / | awk 'NR==2{print $4,$5}')

# Extract available and used disk space
available=$(echo $disk_info | cut -d ' ' -f1)
used=$(echo $disk_info | cut -d ' ' -f2)

# Output the information
echo "$used / $available"
