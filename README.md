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

0. Run `lecture4.sh clean` to delete the demo folder
1. Run `lecture4.sh local` or `lecture4.sh remote` to initialize `local` and `remote` folders within `~/cs193-lecture-demo/lecture4/`
2. Using `tmux` or two separate terminal windows, navigate to `local` and `remote` folder respectively
3. Demonstrate SFTP navigation commands (`lcd`, `lls`, `lpwd`)
4. Modify `code.c` in the `remote`
5. `SFTP> get code.c`. `cat` the downloaded content
6. `SFTP> put -r folder_to_upload`
7. `scp -r <login>@remote.edu:./folder_to_download/ ./`

## Lecture 5 - Debugging

0. Open `VowelCount.java` in IntelliJ IDEA
1. Show `java: bad operand types for binary operator '=='` error and error highlighting
2. Set a breakpoint before the `countVowels` call, start the debugger
3. Show "step over" (line by line in the current method)
4. Show "step into" (stepping into a method)
5. Fix the issue by changing the string to all lowercase using `input = input.toLowerCase()`

