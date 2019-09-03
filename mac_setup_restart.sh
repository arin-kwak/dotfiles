#!/usr/bin/env bash

###############################################################################
# Kill affected applications                                                  #
###############################################################################
for app in "Activity Monitor" "cfprefsd" "Dock" "Finder" "Safari" "SystemUIServer"; \
 	do
 	killall "${app}" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
