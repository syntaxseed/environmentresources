
# Include multiple additional alias files (if exists) from the same dir.
files=(general.sh development.sh)
path="$HOME/BashCustom/BashAliases/"
for file in ${files[@]}
do
    file_to_load=$path$file
    if [ -f "$file_to_load" ];
    then
        . $file_to_load
        #echo "Aliases Loaded: $file"
    fi
done


# Use the Goto Utility (https://github.com/iridakos/goto):
source $path/../goto/goto.sh
