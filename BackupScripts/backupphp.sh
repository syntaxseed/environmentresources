## PHP Local Settings and Info Backup.
## Called via main backupenv.sh script.

mkdir -p $backuptarget'PHPLocal/'
cd $backuptarget'PHPLocal/'

# Backup list of packages currently installed which contain 'php':
dpkg -l | grep php > packages-with-php.txt
echo "\n\033[1;34mPHP: Exported list of packages which contain 'php'."

# Backup PHP.ini files:
cp /etc/php/7.3/cli/conf.d/99-sherri-overrides.ini php_CLI_99-sherri-overrides.ini
cp /etc/php/7.3/apache2/conf.d/99-sherri-overrides.ini php_APACHE2_99-sherri-overrides.ini
echo "\033[1;34mPHP: Copied v7.3 php.ini over-ride files."
