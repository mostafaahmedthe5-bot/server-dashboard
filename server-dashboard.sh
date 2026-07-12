echo "================================="
echo "SERVER HEALTH DASHBOARD"
echo "================================="
echo

echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"
echo "Date: $(date)"
echo

echo "----------- CPU -----------"
top -bn1 | grep 'Cpu(s)'
echo

echo "----------- Memory -----------"
free -h
echo

echo "----------- Disk -----------"
df -h
echo

echo "-------- Top Processes -------"
echo "Top 5 processes by CPU usage:"
ps aux --sort=-%cpu | head -n 6
echo

echo "Top 5 processes by Memory usage:"
ps aux --sort=-%mem | head -n 6
echo

echo "-------- Network --------"
echo "IP Address: $(hostname -I)"
echo

echo "-------- System Uptime --------"
uptime
echo

echo "-------- System --------"
echo "Logged Users: $(who | wc -l)"
echo "Running Processes: $(ps -e | wc -l)"
echo "Kernel Version: $(uname -r)"
echo

echo "----------------------------------"
echo "End of Server Health Dashboard"
echo "----------------------------------"