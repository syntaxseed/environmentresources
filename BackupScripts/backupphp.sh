## PHP Local Settings and Info Backup.
## Called via main backupenv.sh script.

mkdir -p $backuptarget'PHPLocal/'
cd $backuptarget'PHPLocal/'

# Backup list of packages currently installed which contain 'php':
dpkg -l | grep php > packages-with-php.txt
echo "\n\033[1;34mPHP: Exported list of packages which contain 'php'."

# Backup PHP.ini files:
cp /etc/php/8.1/cli/php.ini php_CLI_8.1.ini
cp /etc/php/8.1/apache2/php.ini php_APACHE2_8.1.ini
echo "\033[1;34mPHP: Copied v8.1 php.ini files."
cp /etc/php/8.2/cli/php.ini php_CLI_8.2.ini
cp /etc/php/8.2/apache2/php.ini php_APACHE2_8.2.ini
echo "\033[1;34mPHP: Copied v8.2 php.ini files."
cp /etc/php/8.3/cli/php.ini php_CLI_8.3.ini
cp /etc/php/8.3/apache2/php.ini php_APACHE2_8.3.ini
echo "\033[1;34mPHP: Copied v8.3 php.ini files."
