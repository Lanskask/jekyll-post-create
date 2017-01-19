# Script to make a jekyll post with current date
# Of course I could write this prog in one line, 
# but that way it would be unreadeble

# TODO:
#   - Enumeration (ENUM) for file formats

curPwd=$(pwd)
echo curPwd
#echo $(pwd)

fileDate=$(date '+%Y-%m-%d');

fileName=$1;
fileName=${fileName// /_};
ifEmptyName="post-created-on-$(date '+%Hh%Mm%Ss')";
fileName="${fileName:-$ifEmptyName}"

fileFormat=$2
fileFormat="${fileFormat:-md}"

fullFileName="$fileDate-$fileName.$fileFormat"

echo $fullFileName
# touch $fullFileName

echo $(pwd)
