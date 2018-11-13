
# Include multiple additional alias files (if exists) from the same dir.
files=(general.sh development.sh)
path="$HOME/Development/Repos/Git/EnvironmentResources/BashAliases/"
for file in ${files[@]}
do
    file_to_load=$path$file
    if [ -f "$file_to_load" ];
    then
        . $file_to_load
        #echo "Aliases Loaded: $file"
    fi
done
echo "Aliases Loaded."
