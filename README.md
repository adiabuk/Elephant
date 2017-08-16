Elephant - a new monitoring notification UI made with python2 and PyQt4

# Acknowledgments
Many of the UI components have been taken/adapted from
https://github.com/swanson/stacktracker which is a notification system for stackoverflow.com

# Usage
Run ./Elephant.py which will display an icon in your system tray
Right-click on the new icon, and select settings to put in your server details
and other configuration.  See sample.json for an example of required fields and
JSON format expected from the API/monitoring system.

# Requirements
Linux/MacOSX/Windows with python2 and pyyQT4 installed

# JSON field explanations:
The sample.json shows all the required fields for Elephant to work.
tye types field can contain different types.  Currently these are the suppored
types:
* ISS   issue
* ALM   alarms
* REF   unknown
* Push  push

All dates are in epoch format.  For a better understanding, use the sample json
file placed on a webserver to and connect to it using Elephant.  Change the
start dates to something more recent - eg. 20mins ago to see an alert generated
from that JSON output.

Depending on which types are found in an event, a different icon will show in
the UI notification.  The link is clickable, and should take you to a page
containing additional details about the notification.  Eg. alarms page.




