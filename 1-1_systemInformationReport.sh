#! /bin/bash

# Script focuses on basic info in Linux and using variables with commands along with echo.

# Save information needed
sys_User=$(whoami)
sys_Directory=$(pwd)
sys_List=$(ls -la)
sys_Host=$(hostname)

# Format and echo that information
echo "System Information Report
--------------------------
Current User: 
$sys_User

Current Directory: 
$sys_Directory

Current Content: 
$sys_List

Current Host: 
$sys_Host"
