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

`git_status_uncommited.txt` OUTPUT:
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	modified:   README.md
	new file:   git_status_untracked.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	git_status_uncommitted.txt




`git_status_commited.txt` OUTPUT:
On branch main
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	git_status_committed.txt
	git_status_uncommitted.txt

nothing added to commit but untracked files present (use "git add" to track)




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

1. `main branch` : It is like base of whole project, contains all the finalised, approved and tested code. 
   
   `develop branch` : It is considered as temporary branch, when ever a new feature is created or a bug is detected, develop branch is made to test before any action. Eventually get merged with main branch.

2. Three supporting branches:
   
   a. `Feature/Bugfix branches`: This branch is created with the purpose of adding a new feature or fixing any bugs faced in code. The span of this branch is only until the work in done, afterthat it is added back to main branch.

   b. `Hotfix branches` : This branch come in action only when there is an immediate action need to be taken. eg. while running a website, it is not loading data or working slow at that point this is created to fix issue asap.

   c. `Release branches` : As the name suggest when a new feature is ready to be deployed or bugs are sorte and merged in develop branch and read to release means ready to merged with main branch.

3. The best practices in working with release branches
   a. When the code is ready, tested and approved it is added in release branch so to review all the changes procedure and sturcture again before the release.

   b. In the condition when everything is ready and planned to relase on other time, code can be left in this so at last minute just have to merge this.

   c. Other practice could be after even testing it would be a good idea to observe that the any modulation happening because of new code which might be not compatible with main code.
