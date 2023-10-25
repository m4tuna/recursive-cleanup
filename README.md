# 🧹 Recursive Cleanup Wizard

A flexible cleanup script to delete specific files or folders recursively based on given criteria. 🗑️

**Note**: Always ensure to backup important data and test the script in a safe environment before using it on critical folders. This script does not send items to the Trash, rather it deletes them permanently.

## Requirements:

- **Operating System**: macOS or a Unix-like system.


## Usage:

To use the script, navigate to the directory where you want to run the cleanup and execute the following commands based on your needs.

- **Run All Default Checks**:
  1. Delete directories named node_modules
  2. Delete files with the word "Screenshot" in their name
  3. Delete folders with the same name as a .zip file

  ```bash
  cleanup.sh ~/Downloads --all
  ```

- **Delete Files with a given string in their name**:
  ```bash
  cleanup.sh ~/Screenshots --fileName=Screenshot 
  ```

- **Delete Folders with a given string in their name**:
  ```bash
  cleanup.sh ~/git/my-project --folderName=node_modules
  ```

- **Delete folders with the same name as a .zip file**:
  ```bash
  cleanup.sh ~/Downloads --zip 
  ```

- **Delete files of a specific filetype (e.g., png)**:
  ```bash
  cleanup.sh ~/Downloads --filetype=png
  ```