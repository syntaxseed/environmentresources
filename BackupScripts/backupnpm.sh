## Npm Backup.
## Called via main backupenv.sh script.

mkdir -p $backuptarget'NpmGlobal/'
cd $backuptarget'NpmGlobal/'

# Backup global packages list to a file we can use to re-install via:
# $ xargs npm install --global < packages.txt
npm list --global --parseable --depth=0 | sed '1d' | awk '{gsub(/\/.*\//,"",$1); print}' > packages.txt
echo "\n\033[1;31mNpm: Exported list of packages."
