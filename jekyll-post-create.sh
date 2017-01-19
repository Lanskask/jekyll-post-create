# Script to make a jekyll post with current date
# Of course I could write this prog in one line, 
# but that way it would be unreadeble

# TODO: 
# - Enumeration (ENUM) for file formats 
# - Add Editing of: 
# 	- layout
# 	- categories

echo $(pwd) 
 
fileDate=$(date '+%Y-%m-%d')
 
fileNameWSp=$1;
ifEmptyName="Post created on $(date '+%Hh%Mm%Ss')"
fileNameWSp="${fileNameWSp:-$ifEmptyName}"
fileNameWoSp=${fileNameWSp// /_}
# fileNameWoSp=$( tr '[:upper:]' '[:lower:]' < $fileNameWoSp)
fileNameWoSp=${fileNameWoSp,,}

fileFormat=$2 
fileFormat="${fileFormat:-md}"
 
fullFileName="$fileDate-$fileNameWoSp.$fileFormat" 
 
echo $fullFileName 
touch $fullFileName

cat > $fullFileName <<EOF
---
layout: post
title:  "$fileNameWSp" 
date: $(date "+%Y-%m-%d %H:%M:%S %z")
categories: jekyll update 
---

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet maxime et minima natus doloribus quae suscipit dolores, laboriosam aut possimus quas dolor rerum, modi, laborum, molestias tenetur dolorum assumenda dolorem.
EOF