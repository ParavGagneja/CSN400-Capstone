# Checkpoint2 Submission

- **COURSE INFORMATION: CSN400-2234**
- **STUDENT’S NAME: Parav Gagneja**
- **STUDENT'S NUMBER: 104415211**
- **GITHUB USER ID: 104415211-myseneca**
- **TEACHER’S NAME: Atoosa Nasiri**


### Table of Contents
- [Checkpoint2 Submission](#checkpoint2-submission)
    - [Table of Contents](#table-of-contents)
    - [1. Part A - Adding Files - Local Repo Workflow](#1-part-a---adding-files---local-repo-workflow)
    - [2. Part B - Inspecting Local Repo with `git status` and `git log`](#2-part-b---inspecting-local-repo-with-git-status-and-git-log)
    - [3. Part C - Creating \& Merging Branches](#3-part-c---creating--merging-branches)
    - [4. Part D - Git Branching Strategy Review Question](#4-part-d---git-branching-strategy-review-question)


### 1. Part A - Adding Files - Local Repo Workflow

We are using "git add" to push changes to staging area
the we use "git commit" to commit what we modified
and then "git push" to add those changes to Remote repo

With that we are saving the output of "git status" command in the files with their status



### 2. Part B - Inspecting Local Repo with `git status` and `git log`

`git status` - show the current status of directory, in which state file is right now eg. Staging, Local or remote. using this command we can check is there any changes which needs to be staged, commit or push. eg: after doing changes on a file I run git stauts to check whether changes are saved and are ready to stage.

`git log` - show the changes occured in past, it shows history like what changes have been done. eg: In a running project manager wants to check who what progress has been done and who is playing major role, so logs could be friutful in that case.

### 3. Part C - Creating & Merging Branches
``` bash
parav@LAPTOP-IUCQG101 MINGW64 /e/SEM 5/CSN400/Azure/VSCode/CSN400-Capstone/Checkpoint2 (main)
$ git log -n 5
commit 8e6d88c26f3d86881166caf7fb5aca58ec0e6dc3 (HEAD -> main, origin/feat-emojis, feat-emojis)
Author: pgagneja <pgagneja@myseneca.ca>
Date:   Thu May 25 20:41:26 2023 -0400

    adds emojis to feat-emojis branch

commit b5b05f2653a59cec9d868eb5b829652ce2d9a66e (origin/main, origin/HEAD)
Author: pgagneja <pgagneja@myseneca.ca>
Date:   Thu May 25 20:18:14 2023 -0400

    adds footnotes folder

commit 9be88825e4ad09eaa07c29505f9fb18f6509a72a
Author: pgagneja <pgagneja@myseneca.ca>
Date:   Thu May 25 20:02:42 2023 -0400

    Part B description done

commit e69bb4adf401fa5e44d4cc072338a9059a41c351
Author: pgagneja <pgagneja@myseneca.ca>
Date:   Thu May 25 19:56:50 2023 -0400

    Headers working

commit e7c76a8047602a09a540fef2d6b5d3427c5320b8
Author: pgagneja <pgagneja@myseneca.ca>
Date:   Thu May 25 18:17:33 2023 -0400

    Header test
```

### 4. Part D - Git Branching Strategy Review Question
