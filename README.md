
# File Manipulation Shell Scripts

File Manipulation is a simple shell scripting project designed to help users search for text strings within files in a specified directory. It includes scripts for finding text within files and writing text to files, and also includes a testing script to ensure the functionality of these scripts.

## Installation Instructions

1. Clone the repository to your local machine using:

```bash
  git clone https://github.com/AbhinitShetty/FileManipulation-ShellScripts.git
```
2. Navigate to the project directory:

```bash
  cd finder-app/
```
3. Make the shell scripts executable:
```bash
  chmod +x finder.sh writer.sh finder-test.sh full-test.sh
```
## Project Explanation

The Finder App consists of the following components:

1. **writer.sh**
- Accepts two arguments: a file path (`writefile`) and a text string (`writestr`).
- Exits with a return value of 1 and an error message if any of the arguments are not specified.
- Creates a new file with the path `writefile` and writes `writestr` to it, overwriting any existing file and creating the path if it doesn’t exist.
- Exits with a return value of 1 and an error message if the file could not be created.
- Example Invocation:	
```bash
  ./writer.sh /tmp/aesd/assignment1/sample.txt ios
```
Creates file : **/tmp/aesd/assignment1/sample.txt** \
With content : **ios**

2. **finder.sh**
- Accepts two runtime arguments: a directory path (`filesdir`) and a text string (`searchstr`).
- Exits with a return value of 1 and an error message if any of the parameters are not specified.
- Exits with a return value of 1 and an error message if `filesdir` is not a valid directory.
- Prints a message "The number of files are X and the number of matching lines are Y" where X is the number of files in the directory and its subdirectories, and Y is the number of lines containing `searchstr`.
- Example Invocation:
```bash
  ./finder.sh /tmp/aesd/assignment1 linux
```
3. **finder-test.sh** <br>
A shell script to test the implementations of `finder.sh` and `writer.sh`:
- Accepts two arguments: the number of files to write (`numfiles`) and the string to write to each file (`writestr`).
- Defaults to `numfiles` 10 and `writestr` "AELD_IS_FUN" if respective arguments are not specified.
- Creates an empty directory `/tmp/aeld-data`.
- Loops to create `numfiles` files in the directory `/tmp/aeld-data` using the `writer.sh` script.
- Runs `finder.sh` with `filesdir` set to `/tmp/aeld-data` and `searchstr` set to `writestr`.
- Compares the output of `finder.sh` with the expected output "The number of files are numfiles and the number of matching lines are numfiles". Prints “success” on match or “error” on mismatch.

4. **full-test.sh**  <br>
A shell script to fully test the implementation of the Finder App. Ensure all steps pass by running this script.


## Usage

1. To write text to a file, use:

```bash
  ./writer.sh <file_path> <text_string>
```

2. To find text within files, use:
```bash
  ./finder.sh <path_to_directory> <search_string>
```
	
3. To test the scripts, use:
```bash
  ./finder-test.sh <num_files> <write_string>
```
	
## Testing

1. Run the `full-test.sh` script to ensure all functionalities are working as expected:
```bash
  ./full-test.sh
```
