#!/bin/bash

# Delete files with a given name substring
delete_files_with_name() {
    find "$1" -type f -name "*$2*" -exec rm -rf "{}" \;
}

# Delete folders with the same name as a .zip file in the same directory
delete_zip_folders() {
    find "$1" -type f -name '*.zip' | while read -r zipfile; do
        folder_name="${zipfile%.zip}"
        if [ -d "$folder_name" ]; then
            rm -rf "$folder_name"
        fi
    done
}

# Delete files with a given filetype
delete_filetype() {
    find "$1" -type f -name "*.$2" -exec rm -rf "{}" \;
}

# Delete directories by name
delete_folder_by_name() {
    find "$1" -type d -name "$2" -exec rm -rf "{}" \;
}

DIR="$1"

# Process flags
shift
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --all)
            delete_files_with_name "$DIR" "Screenshot"
            delete_zip_folders "$DIR"
            delete_folder_by_name "$DIR" "node_modules"
            ;;
        --fileName=*)
            NAME="${1#*=}"
            delete_files_with_name "$DIR" "$NAME"
            ;;
        --zip)
            delete_zip_folders "$DIR"
            ;;
        --filetype=*)
            TYPE="${1#*=}"
            delete_filetype "$DIR" "$TYPE"
            ;;
        --folderName=*)
            FOLDER_NAME="${1#*=}"
            delete_folder_by_name "$DIR" "$FOLDER_NAME"
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
    shift
done
