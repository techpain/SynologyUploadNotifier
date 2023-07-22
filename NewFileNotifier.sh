#################################################################################################
# For use with Synology DSM. Create a scheduled task, and add the following under
# 'Task Settings' > 'Run Command' > 'User defined script':
# Make sure to replace the following strings with correct values: DIRECTORY_NAME, MYEMAIL@MYDOMAIN.COM
#####################

cd '/volume1/DIRECTORY_NAME/'
ls > current_dir
current_dir_len=$(wc -l < current_dir)
prior_dir_len=$(wc -l < prior_dir)
num_new_files=$((current_dir_len - prior_dir_len))
if ! (diff current_dir prior_dir> /dev/null) && [ "$num_new_files" -gt 0 ]
then
/usr/bin/php -r "mail('MYEMAIL@MYDOMAIN.COM','$num_new_files new files(s) have been uploaded to DIRECTORY_NAME/','$num_new_files new files(s) uploaded to DIRECTORY_NAME/');"
fi
cp current_dir prior_dir
