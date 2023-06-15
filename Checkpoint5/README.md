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

<b>Question 3:</b>
``` 
Docker uses layered architecture model which means whenever we create an image or modify image it just
add a new layer to it to reduce duplication, so when we used same command without modification docker 
used same code from cache memory and recognised the same existing layer, that's why we are only able to 
see one image file even we use "docker build -t getting-started ." multiple times.
```

<b>Question 4:</b>
``` bash
"-d" flag stands for detached mode, which means container gonna run in backgound without being attached to 
terminal. This mode is useful for servies which don't need user interaction and keep on running in background.

"-p" flag stands for port mapping, which connects localhost port's with container's port. This is very fruitful 
while running multiple containers to avoid conflict between them.

When we ran the command "docker run -p 1000:3000 getting-started" the output is embeded in following which states 
instead of running process in background now its running in foreground.

parav@LAPTOP-IUCQG101 MINGW64 /e/SEM 5/CSN400/Azure/CP5/dockerworkfolder/getting-started/app (master)
$ docker run -p 1000:3000 getting-started
Using sqlite database at /etc/todos/todo.db
Listening on port 3000

```

<b>Question 5:</b>
```
"docker run -p 1000:3000 getting-started" according to syntax <host port>:<Container port>
this means port 1000 in localhost must be used to reach container.
```

<b>Question 6:</b>
```

```
### Part B - Share the application: Follow the instructions and submit the screenshots.
### Part C - Persist the DB: Follow the instructions and embed outputs of the commands asked for.
### Part D - Multi container apps: Follow the instructions and and embed outputs of the commands asked for.