# SynologyUploadNotifier

For use with Synology DSM.

This script checkc a directory for the number of files and compares it to the file count from the last time it was checked. If there are more files, send an email notification.

Create a scheduled task, and add the script under 'Task Settings' > 'Run Command' > 'User defined script'

Make sure to replace the following strings with correct values: DIRECTORY_NAME, MYEMAIL@MYDOMAIN.COM
