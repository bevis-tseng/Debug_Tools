#!/bin/bash

PREFS_JS=$(adb shell echo -n "/data/b2g/mozilla/*.default")/prefs.js
adb pull $PREFS_JS
echo 'user_pref("ril.debugging.enabled", true);' >> prefs.js
echo 'user_pref("mms.debugging.enabled", true);' >> prefs.js
echo 'user_pref("network.debugging.enabled", true);' >> prefs.js
adb shell stop b2g
adb push prefs.js $PREFS_JS
adb shell start b2g 
