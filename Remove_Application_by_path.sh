#!/bin/bash

#######################################################################
#
# Remove Application Script for Jamf Pro
# #1 Step - Designed for use in Jamf Pro, Set Script Parameter 4 - Full Application Path to Name
# #2 Step - Set Policy and #4 paramter = full path to app, ie: /Applications/Hue Sync.app
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
