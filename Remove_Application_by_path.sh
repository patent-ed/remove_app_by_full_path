#!/bin/bash

#######################################################################
#
# Remove Application Script for Jamf Pro
# Designed for used in Jamf Pro, 
#
#######################################################################

# Inputted variables
appNamePath="$4"


if [[ -z "${appNamePath}" ]]; then
    echo "No application specified!"
    exit 1
fi

# Now remove the app
echo "Removing application: $appName"

# Remove the application
/bin/rm -rf "$appNamePath"
