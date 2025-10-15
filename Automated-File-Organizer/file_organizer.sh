#!/bin/bash

DOWNLOADS="$HOME/Downloads"
LOG="$DOWNLOADS/Automated-File-Organizer/organizer.log"

declare -A FOLDERS
FOLDERS=(
    ["Images"]="jpg png jpeg gif"
    ["Documents"]="pdf docx xlsx pptx"
    ["Scripts"]="sh py js"
    ["Videos"]="mp4 mkv mov"
    ["Archives"]="zip tar gz rar"
    ["Music"]="mp3 wav"
    ["Text"]="txt md"
)

for folder in "${!FOLDERS[@]}"; do
    mkdir -p "$DOWNLOADS/$folder"
done

shopt -s globstar nocaseglob
for file in "$DOWNLOADS"/**/*; do
    if [ -f "$file" ]; then
        for folder in "${!FOLDERS[@]}"; do
            for ext in ${FOLDERS[$folder]}; do
                if [[ "$file" == *.$ext ]]; then
                    mv "$file" "$DOWNLOADS/$folder/"
                    echo "$(date '+%Y-%m-%d %H:%M:%S') Moved $(basename "$file") to $folder" >> "$LOG"
                    echo "Moved $(basename "$file") to $folder"
                    break 2
                fi
            done
        done
    fi
done
