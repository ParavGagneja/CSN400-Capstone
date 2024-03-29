# Checkpoint3 Submission

- **COURSE INFORMATION: CSN400-2234**
- **STUDENT’S NAME: Parav Gagneja**
- **STUDENT'S NUMBER: 104415211**
- **GITHUB USER ID: 104415211-myseneca**
- **TEACHER’S NAME: Atoosa Nasiri**

### Table of Contents
- [Checkpoint3 Submission](#checkpoint3-submission)
    - [Table of Contents](#table-of-contents)
    - [Part A - Manage Conflicts - Overwrite Remote Changes](#part-a---manage-conflicts---overwrite-remote-changes)
    - [Part B - Manage Conflicts - Reset Local Commit Head](#part-b---manage-conflicts---reset-local-commit-head)
    - [Part C - Manage Conflicts - Merge Editor](#part-c---manage-conflicts---merge-editor)
    - [Part D - Collaboration - Creating Pull Request](#part-d---collaboration---creating-pull-request)
    - [Question/Answer:](#questionanswer)

### Part A - Manage Conflicts - Overwrite Remote Changes
``` bash 
part1-conflict-overwrite.log 

POST git-receive-pack (9210 bytes)
remote: Resolving deltas:   0% (0/10)        
remote: Resolving deltas:  10% (1/10)        
remote: Resolving deltas:  20% (2/10)        
remote: Resolving deltas:  30% (3/10)        
remote: Resolving deltas:  40% (4/10)        
remote: Resolving deltas:  50% (5/10)        
remote: Resolving deltas:  60% (6/10)        
remote: Resolving deltas:  70% (7/10)        
remote: Resolving deltas:  80% (8/10)        
remote: Resolving deltas:  90% (9/10)        
remote: Resolving deltas: 100% (10/10)        
remote: Resolving deltas: 100% (10/10), completed with 2 local objects.        
Pushing to https://github.com/104415211-myseneca/CSN400-Capstone.git
To https://github.com/104415211-myseneca/CSN400-Capstone.git
 + 4c90eb5...ff1751b main -> main (forced update)
updating local tracking ref 'refs/remotes/origin/main'

```


### Part B - Manage Conflicts - Reset Local Commit Head

``` bash
Part2-conflict-error.log

Pushing to https://github.com/104415211-myseneca/CSN400-Capstone.git
To https://github.com/104415211-myseneca/CSN400-Capstone.git
 ! [rejected]        main -> main (fetch first)
error: failed to push some refs to 'https://github.com/104415211-myseneca/CSN400-Capstone.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.

```

``` bash
part2-pull-error.log

POST git-upload-pack (196 bytes)
POST git-upload-pack (583 bytes)
From https://github.com/104415211-myseneca/CSN400-Capstone
   ff1751b..6b0e1d9  main        -> origin/main
 = [up to date]      feat-emojis -> origin/feat-emojis
Auto-merging Checkpoint3/conflict-resolution/index.html
CONFLICT (content): Merge conflict in Checkpoint3/conflict-resolution/index.html
Automatic merge failed; fix conflicts and then commit the result.

```

``` bash
part2-reset-head.log

HEAD is now at ff1751b modifies style color in index.html to green

```

``` bash 
part2-reset-head.log

HEAD is now at ff1751b modifies style color in index.html to green
commit ff1751b19376c6cbfd2010f7c6e5907b370daf39
Author: pgagneja <pgagneja@myseneca.ca>
Date:   Tue May 30 16:05:38 2023 -0400

    modifies style color in index.html to green
```

``` bash 
part2-pull-success.log

POST git-upload-pack (196 bytes)
From https://github.com/104415211-myseneca/CSN400-Capstone
 = [up to date]      main        -> origin/main
 = [up to date]      feat-emojis -> origin/feat-emojis
Updating ff1751b..6b0e1d9
Fast-forward
 Checkpoint3/conflict-resolution/index.html | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

```


### Part C - Manage Conflicts - Merge Editor

``` bash
part3-pull-conflict.log

POST git-upload-pack (375 bytes)
POST git-upload-pack (968 bytes)
From https://github.com/104415211-myseneca/CSN400-Capstone
 * branch            feat-body-text -> FETCH_HEAD
 * [new branch]      feat-body-text -> origin/feat-body-text
Auto-merging Checkpoint3/conflict-resolution/index.html
CONFLICT (content): Merge conflict in Checkpoint3/conflict-resolution/index.html
Automatic merge failed; fix conflicts and then commit the result.

```

``` bash 
part3-status.log

On branch main
Your branch is up to date with 'origin/main'.

All conflicts fixed but you are still merging.
  (use "git commit" to conclude merge)

Changes to be committed:
	modified:   Checkpoint3/conflict-resolution/index.html

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   Checkpoint3/README.md

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	Checkpoint3/logs/part3-pull-conflict.log
	Checkpoint3/logs/part3-status.log

```

<img src="Part C.jpg"
     alt="Part C screenshot merge completed"
     title="Part C merge completed"
     style="float: left; margin-right: 10px;" />

### Part D - Collaboration - Creating Pull Request

<img src="Part D.jpg"
     alt="Part D pull request summary"
     title="Part D pull request completed"
     style="float: left; margin-right: 10px;" />


### Question/Answer:

<p>Part A - What is the color of the text after you forcefully overwrite remote with local changes?<p>
<p>Answer: Green<p>

<p>Part B- What is the color of the text after you forcefully overwrite remote with local changes?</p>
<p>Answer: Maroon</p>