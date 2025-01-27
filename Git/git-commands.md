This is not a complete list of commands, just commonly used commands to help beginners use git. 
For a full up to date list of commands and options see the git documentation: 

https://git-scm.com/docs

# Cloning and Creating Projects
|Command|Description|
|:-:|:-:|
|git init| create a git repository; initialize the .git directory|
|git clone| download a copy of a remote git repo locally|


## git init
Create a git repository; initialize the .git directory
```
git init
```
Create a git repo in a specified <directory-path>
```
git init <directory-path>
```

Suppress output; except for errors and warnings
```
git init -q 
```

Use <branch-name> for the initial branch
```
git init -b  <branch-name>              
git init --initial-branch   <branch-name>
```



# git clone
Download a copy of a remote git repo locally
```
git clone <url>
```

Clone from a local repo
```
git clone -l <repo-path>
```

Use <name> instead of the default remote repo name "origin"
```
git clone -o <name>
git clone --origin <name>
```

Specify the branch <name> to point HEAD to after download
```
git clone -b <name>
git clone --branch <name>
```

# Setup and Configuration

|Command|Description|
|:-:|:-:|
|git|command to invoke git's revision control commands|
|git config|get and/or set repository or global options|

Invoke git's revision control commands
```
git
```

Print the current version of git
```
git version
```

Print a list of the most commonly used git commands with brief explainations
```
git help
```

## git config

Set the name attached to commits
```
git config --global user.name "<name>"
```

<br>

Set the email attached to commits
```
git config --global user.email "<email address>"
```

<br>

Enable colorization of command line output
```
git config --global color.ui auto
```

<br>

Configure the default branch name to main instead of master
```
git config --global init.defaultBranch main
```

<br>

## Basic Snapshot Commands
Snapshot: refers to the state of a repo at a particular point in time. When you make a commit in Git, youa re creating a snapshot of the project. This includes all of the files and directories in the project at the moment. 


|Command|Description|
|:-:|:-:|
|git add|Add file contents to the index (staging area)          |
|git status| Show the working tree status                           |
|git commit| Record changes to the repository                       |
|git restore| Restore working tree files                             |
|git reset| Reset current HEAD to the specified state              |
|git diff| Show changes between commits, commit and working tree, etc. |


