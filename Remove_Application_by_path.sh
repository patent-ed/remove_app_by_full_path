#!/bin/bash

#######################################################################
#
# Remove Application Script for Jamf Pro
# Designed for use in Jamf Pro, Set Script Parameter 4 - Full Application Path to Name
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
