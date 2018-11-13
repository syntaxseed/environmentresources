## PHP Local Settings and Info Backup.
## Called via main backupenv.sh script.

mkdir -p $backuptarget'PHPLocal/'
cd $backuptarget'PHPLocal/'

# Backup list of packages currently installed which contain 'php':
dpkg -l | grep php > packages-with-php.txt
echo "\n\033[1;34mPHP: Exported list of packages which contain 'php'."

# Backup PHP.ini files:
cp /etc/php/7.2/cli/php.ini php_CLI.ini
cp /etc/php/7.2/apache2/php.ini php_APACHE2.ini
echo "\033[1;34mPHP: Copied php.ini files."
