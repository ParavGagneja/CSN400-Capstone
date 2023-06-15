# Checkpoint3 Submission

- **COURSE INFORMATION: CSN400-2234**
- **STUDENT’S NAME: Parav Gagneja**
- **STUDENT'S NUMBER: 104415211**
- **GITHUB USER ID: 104415211-myseneca**
- **TEACHER’S NAME: Atoosa Nasiri**


### Table of Contents
1. [Part A - Containerize an application](#part-a---containerize-an-application)
2. [Part B - Share the application](#part-b---share-the-application)
3. [Part C - Persist the DB](#part-c---persist-the-db)
4. [Part D - Multi container apps](#part-d---multi-container-apps)

### Part A - Containerize an application
<b>Question 1:</b>
``` 
So, when we ran `docker build -t getting-started .` second time, the build time was less as docker 
had a built-in cache memory which was created while creating the image first time, second time docker 
just processed those steps back which causes less steps and less time but if any modification would be 
done at any step then docker has to create steps again. 
```
<b>Question 2:</b>
``` bash
Answer: The argument "-t" is used to display tag on image, this tag can be verified using command "docker image ls".
if the argument "-t" is missing this error will pop-up, which means command need the
argument
 
parav@LAPTOP-IUCQG101 MINGW64 /e/SEM 5/CSN400/Azure/CP5/dockerworkfolder/getting-started/app (master)
$ docker build getting-started .
ERROR: "docker buildx build" requires exactly 1 argument.
See 'docker buildx build --help'.

Usage:  docker buildx build [OPTIONS] PATH | URL | -

Start a build
```

### Part B - Share the application: Follow the instructions and submit the screenshots.
### Part C - Persist the DB: Follow the instructions and embed outputs of the commands asked for.
### Part D - Multi container apps: Follow the instructions and and embed outputs of the commands asked for.