# Basic Linux Commands

## Tips and Tricks for Using Linux Command Line

```clear``` - Command to clear the terminal if it gets filled up with too many commands.

```TAB key``` - Used to fill up (autocomplete) the remaining parts in terminal. Example: “cd Doc” and then TAB and the terminal fills the rest up and makes it “cd Documents”.

```Ctrl```+```C``` can be used to stop any command in terminal safely. If it doesn't stop with that, then ```Ctrl```+```Z``` can be used to force stop it.

```exit``` - command used to close a terminal

```reboot```, ```halt``` - reboot or power off the computer (the commands required priviledge access).

```Shift key``` + ```PageUP key```  or ```Shift key``` + ```PageDOWN key``` - Used to navigate on the screen terminal, up or down 

```Up key``` and ```Down key``` - Used to navigate through the commands. 

#### Basic Commands

```pwd``` — When you first open the terminal, you are in the home directory of your user. To know which directory you are in, you can use the ```pwd``` command. It gives us the absolute path, which means the path that starts from the root. The root is the base of the Linux file system. It is denoted by a forward slash(```/```). The user directory is usually something like ```/home/username```.

 ```ls``` — Use to know what files are in the directory you are in. You can see all the hidden files by using the command ```ls -a```.

 ```history``` - Shows all commands given previously . Any command in the history can be executed with ```!number```  . Example: ```!50```  it will execute the command from line 50 in the history command.

 ```cd``` — Use the "cd" command to go to a directory. For example, if you are in the home folder, and you want to go to the downloads folder, then you can type in “cd Downloads”. Remember, this command is case sensitive, and you have to type in the name of the folder exactly as it is. But there is a problem with these commands. Imagine you have a folder named ```Raspberry Pi```. In this case, when you type in ```cd Raspberry Pi```, the shell will take the second argument of the command as a different one, so you will get an error saying that the directory does not exist. Here, you can use a backward slash. That is, you can use ```cd Raspberry\ Pi``` in this case. Spaces are denoted like this: If you just type “cd” and press enter, it takes you to the home directory. To go back from a folder to the folder before that, you can type ```cd ..``` . The two dots represent back.

```pushd``` - creating a list of the directories, by adding the mentioned directories and doing also ```cd``` to the directory

```popd``` - taking out of the list the directories and doing also ```cd``` to that directory

```dirs``` - print the list directories created with ```pushd```  

 ```mkdir & rmdir``` — Use the mkdir command when you need to create a folder or a directory. For example, if you want to make a directory called “DIY”, then you can type ```mkdir DIY```. Remember, as told before, if you want to create a directory named ```DIY Hacking```, then you can type ```mkdir DIY\ Hacking```. Use rmdir to delete a directory. But rmdir can only be used to delete an empty directory. To delete a directory containing files, use ```rm```.

 ```rm``` - Use the rm command to delete files and directories.  Use ```rm -r``` to delete just the directory. It deletes both the folder and the files it contains when using only the rm command.

 ```touch``` — The touch command is used to create a file. It can be anything, from an empty txt file to an empty zip file. For example, ```touch new.txt```.

 ```man``` — To know more about a command and how to use it, use the man command. It shows the manual pages of the command. For example, “man cd” shows the manual pages of the cd command. Typing in the command name and the argument helps it show which ways the command can be used (e.g., cd –help).

 ```cp``` — Use the cp command to copy files through the command line. It takes two arguments: The first is the location of the file to be copied, the second is where to copy.

 ```mv``` — Use the mv command to move files through the command line. We can also use the mv command to rename a file. For example, if we want to rename the file “text” to “new”, we can use “mv text new”. It takes the two arguments, just like the cp command.

```wc``` - count new lines, words and bytes for a file

#### Intermediate Commands

 ```echo``` — The "echo" command helps us move some data, usually text into a file. For example, if you want to create a new text file or add to an already made text file, you just need to type in, “echo hello, my name is alok >> new.txt”. You do not need to separate the spaces by using the backward slash here, because we put in two triangular brackets when we finish what we need to write.

 ```cat``` — Use the cat command to display the contents of a file. It is usually used to easily view programs.

 ```diff``` - differences between the content of different files
 
 ```touch``` - Creates empty files

 ```nano```, ```vi``` — nano and vi are already installed text editors in the Linux command line. The nano command is a good text editor that denotes keywords with color and can recognize most languages. And vi is simpler than nano. You can create a new file or modify a file using this editor. 

 ```sudo``` — A widely used command in the Linux command line, sudo stands for "SuperUser Do". So, if you want any command to be done with administrative or root privileges, you can use the sudo command.

  ```df``` — Use the df command to see the available disk space in each of the partitions in your system. You can just type in df in the command line and you can see each mounted partition and their used/available space in % and in KBs. If you want it shown in megabytes, you can use the command “df -m”.

  ```du``` — Use du to know the disk usage of a file in your system. If you want to know the disk usage for a particular folder or file in Linux, you can type in the command df and the name of the folder or file. For example, if you want to know the disk space used by the documents folder in Linux, you can use the command “du -sh Documents”. You can also use the command “ls -lah” to view the file sizes of all the files in a folder.

 ```tar``` — Use tar to work with tarballs (or files compressed in a tarball archive) in the Linux command line. It can be used to compress and uncompress different types of tar archives like .tar, .tar.gz, .tar.bz2,etc. It works on the basis of the arguments given to it. For example, "tar -cvf" for creating a .tar archive, -xvf to untar a tar archive, -tvf to list the contents of the archive, etc. Since it is a wide topic, here are some examples of tar commands.

  ```zip```, ```unzip```, ```gunzip``` — Use zip to compress files into a zip archive, and unzip to extract files from a zip archive.

  ```uname``` — Use uname to show the information about the system your Linux distro is running. Using the command “uname -a” prints most of the information about the system. This prints the kernel release date, version, processor type, etc.

  ```chmod``` — Use chmod to make a file executable and to change the permissions granted to it in Linux. 

  ```hostname``` — Use hostname to know your name in your host or network. Basically, it displays your hostname and IP address. Just typing “hostname” gives the output. Typing in “hostname -I” gives you your IP address in your network.

  ```ping``` — Use ```ping``` to check your connection to a server.
  
  ```passwd``` - Changing username password

#### Search files and content of the files

  ```find``` - Find specific files (Attributes : -name = specify the name of the file, -type = type can be file (f) or directory (d), -user = owner of the files, -size = size of the file, -perm = permissions of the files, -maxdepth = maximum search depth inside a directory, -print = print on screen the search result,  -executable = the file to be executable, -exec = execute a command using the results provided by find command)

 ```grep``` – Use to search data inside the content of a file ( Attributes: -i = insensitive search, -v = skip the results having a matching pattern, -R = recursively search)  

#### File operations

```<```, ```>``` - Redirect the output

```>>```  - Append operator (concatenate the content)

```|``` - Pipeline is a sequence of processes chained together by their standard streams, so that the output of each process (stdout) feeds directly as input (stdin) to the next one.     

```cut``` – Remove sections from each line of files 

```tr```– Translate or delete characters from standard input   

```more```, ```less``` - List the content of a file in normal and reverse order or depending on first screen full of output

#### Globbing
```ls *2014*```  - List all files containing 2014 word

```ls *201[34]*```  - List all files containing 2013 and 2014 and not both in the same time

```ls [East,West]*``` - List all files starting with East and West

```ls *{2013..2015}``` - List all files having the end 2013, 2014 and 2015 

```ls [HC][A-Z][0-9][0-9]???``` - list all files starting with H or C, then with any letter from A to Z, then any number from 0 to 9, then again any number from 0 to 9 and ??? means 3 characters

```~``` - Represents the user home directory  Example: if you are logged as user1 and his home directory is ```/home/user1```, this directory can be referred as ```~.``` 

```.``` - Represents the current path 

