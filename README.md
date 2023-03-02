# CS193 Lecture Demo Scripts

CS193: Tools is a Purdue University [CS course](https://selfservice.mypurdue.purdue.edu/prod/bzwsrch.p_catalog_detail?term=202320&subject=CS&cnbr=19300&enhanced=Y) designed to teach CS/DS/AI freshmen essential development tools such as UNIX shells, debugging tools, and Git.

You can find resources I used for demos in lectures while working as an instructor for two semesters. Future instructors are welcome to use this repository.

## Lecture 2 - Essential Shell Commands

1. Run `lecture2.sh` to initialize `~/cs193-demos/lecture2/` folder
2. `ls && ls-al`, `clear`
3. `cd c` (show the tab completion) and `pwd`
4. `cd ..`, `touch NewFile.java`, `mv NewFile.java java/`
5. `cat ProjectVersionFinalFinalFinalActuallyFinal.java`
6. `mv ProjectVersionFinalFinalFinalActuallyFinal.java Pj.java`
7. `cat Pj.java`
8. `rm ProjectVersionOne.java`
9. `cd.. && rm -rf cpp`
10. Show `man vim`, locate `--clean` option
11. `vim --clean` and demo Vim

## Lecture 4 - SFTP/SCP

1. Run `lecture4.sh clean` to delete the demo folder
2. Run `lecture4.sh local` or `lecture4.sh remote` to initialize `local` and `remote` folders within `~/cs193-lecture-demo/lecture4/`
3. Using `tmux` or two separate terminal windows, navigate to `local` and `remote` folder respectively
4. Demonstrate SFTP navigation commands (`lcd`, `lls`, `lpwd`)
5. Modify `code.c` in the `remote`
6. `SFTP> get code.c`. `cat` the downloaded content
7. `SFTP> put -r folder_to_upload`
8. `scp -r <login>@remote.edu:./folder_to_download/ ./`

## Lecture 5 - Debugging

1. Open `VowelCount.java` in IntelliJ IDEA
2. Show `java: bad operand types for binary operator '=='` error and error highlighting
3. Set a breakpoint before the `countVowels` call, start the debugger
4. Show "step over" (line by line in the current method)
5. Show "step into" (stepping into a method)
6. Fix the issue by changing the string to all lowercase using `input = input.toLowerCase()`

## Lecture 6 - Intro to VCS and single-user ADD-COMMIT-PUSH workflow

1. Make a new GitHub repository. Show the message for `git init` command (just mention it) and clone the repository
2. Show that the cloned repository is a regular directory with `.git` folder using `ls -la` command
3. Create a new file called `hello.py`. Make a new line
4. Show `git status` command
5. `git add . && git commit`
6. Show that the change is not available on the remote repository
7. Add a new line to the file, `git add . && git commit -m "(message)"`
8. `git push` and show that the commits have been reflected on the remote repository
9. `git log && git revert <commit-id>`
10. `git push`

## Lecture 8 - Merge Conflict

1. Create a new repository
2. Create a new file called `hello.c` and add the following content:

```c
#include <stdio.h>

int main() {
  printf("Hello CS193 students!");
  return 0;
}
```

3. Change the line 4 (print statement) to something like "Nice to meet you..."
4. Make a commit in the local repository. It's a good time to review "add - commit" workflow. **Do NOT push**
5. In GitHub web interface, change the line 4 to something else (e.g. "I'm an evil coworker")
6. `git status` -> `git pull`
7. Show merge conflict, fix it, commit, and push

