# 🧹 Recursive Cleanup Wizard

A flexible cleanup script to delete specific files or folders recursively based on given criteria. 🗑️

## Requirements:

- **Operating System**: macOS or a Unix-like system.
- **Shell**: Bash.
- **Commands**: `find` (typically pre-installed on Unix-like systems).
- File system support for a `.Trash` directory (for macOS). On other systems, you might need to adjust the script's `move_to_trash` function.


## Usage:

To use the script, navigate to the directory where you want to run the cleanup and execute the following commands based on your needs.

- **Run All Checks**:
  ```bash
  cleanup.sh ./ --all
  ```

- **Delete Files with the word "Screenshot"**:
  ```bash
  cleanup.sh ./ --name "Screenshot" 
  ```

- **Delete folders with the same name as a .zip file**:
  ```bash
  cleanup.sh ./ --zip 
  ```

- **Delete files of a specific filetype (e.g., png)**:
  ```bash
  cleanup.sh ./ --filetype "png"
  ```

- **Delete `node_modules` directories**:
  ```bash
  cleanup.sh ./ --node_modules
  ```

**Note**: Always ensure to backup important data and test the script in a safe environment before using it on critical folders. This script does not send items to the Trash, rather it deletes them permanently.
