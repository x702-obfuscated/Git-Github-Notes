
1. Using Git Locally
    1. Installing Git
    1. General Git commands
    1. Git files
    1. Workspace commands
    1. Index commands
    1. Stash commands
    1. Local repository 
1. Using Git with a Remote Repository
    1. Configure User Info
    1. Creating a remote repository with Github
    1. Generating ssh keys for remote access
    1. General Git Remote commands
    1. Workspace Remote commands
    1. Index Remote commands
    1. Stash Remote commands
    1. Remote repository commands
1. Common tasks performed with git and github






untracked vs tracked files
tracked are files that where in the last snapshot(commit), as well as any newly staged files.
These can be unmodified, modified, or staged.

untracked files are everything else. For example new files, not in the last snapshot.

When a repo is cloned all files will be tracked and unmodified because GIT just checked them out and you haven't edited anything.

<br>



# `General Git Commands`
> * All git commands begin with invoking 'git' and then a specific git command.

To get help with any git command 
```
git help <command name>
```

<br>

To create (initialize) the .git directory with all the necessary files for a git repository (creates a local git repo)

```
git init                    Create git repo in current directory
git init <dir-path>         Create git repo in spacified directory

git init -q                 Suppress the output of init

git init --initial-branch=<branch-name>     Specify the initial branch name
```

<br>

Check the status of the repo this shows branch, commits, untracked files and tracked files ready to be committed

    git status

<br>

Add files and folders to the index (to be committed)

    git add <filename>

<br>


Store the current contents of the index in a new commit along with a log message from the user describing the changes.

    git commit
    git commit [-m "msg"]
  
    git commit -m "<message for commit>"
    git commit -a -m "<message for commit>"       (adds all to staging and then commits)
    git commit -m "<message for commit>" --amend  (amends the message for latest commit)

<br>

Show recent commits, most recent on top.  

    git log

<br>

List existing branches

    git branch

<br>

Create a branch and switch to it (switches to another branch, -b creates a new branch, code written here is isolated to this branch and merged to the main later)

    git checkout -b <name of new branch>

<br>

Switch branches by updating the index and workspace to reflect the specified branch, \<branch>, and updating HEAD to be \<branch>

    git switch <branch>

<br>

Reset your current branch to a specific commit and update the working directory and staging area to match that commit.  
WARNING: Any changes to tracked files in the working tree since \<commit> are lost.

    git reset --hard [<commit>]

<br>

***The commands above are the most common commands you will encounter while using git.***

<br>



# `Using Git Locally: Workspace Commands`
Check the status of the repo   
this shows branch, commits, untracked files and tracked files ready to be committed

    git status

<br>

Add files and folders to the index (to be committed)

    git add <filename>

<br>

Add all files/folders in the current working directory  
   
    git add .   
    git add -A  
    git add --all 
> * git will now track changes to the file(s) that have been added    
> * These files are added to the index where the files sit until they are committed  

<br>
 
Add the current content of files, NOT NEW files to the index

    git add -u

<br>

Snapshot a file to prepare for version (add a file to the index)
```
git add <file or folder>
git add .                   Adding all files in the current directory*

git add -A                  Stage all changes, including deletions, across the entire repository
git add -u                  Stage changes to tracked files, do not stage new untracked files
git add -p                  Interactively stage changes, allow you to review each change before staging
git add -i                  Enter an interactive mode to stage changes, providing a menu driven interface
git add -v                  Verbose output, showing wht is being staged 
git add -f                  Force the addition of files ignored by .gitignore

```

Display the differences not yet added to the index (staging)

    git diff

<br>

Remove a file from the workspace and index (make a file untracked and delete)

    git rm <file(s)...>
    git rm --cached <file(s)...> (removes a staged file from the index)

<br>

Move a file in the workspace and the index

    git mv <file(s)...>

<br>

Update the file or directory in the workspace. (Does not switch branches)

    git checkout <file(s)... or dir>

<br>

# `Using Git Locally: Index Commands`
## Index
> * This is the staging area for file changes to commit.   
> * Before you "commit" (or checkin) files, you need to first add them to the index.   
> * This is also called "current directory cache", "staging area", "cache" or "staged files".

remove a file from staging

    git restore --staged <filename>

<br>

Remove specified files from the next commit. Resets the index but not the working tree
    
```
git reset HEAD <file(s)...>
```

<br>

checking changes

    git diff

(shows the differences between the last commit and the current changes)

<br>

View the changes since the latest commit(pass a commit to compare since that commit)

    git diff --cached [<commit>]

<br>

Store the current contents of the index in a new commit along with a log message from the user describing the changes.

    git commit [-m "msg"]

<br>

Modify the last commit with the current index changes

    git commit --amend

<br>


# `Using Git Locally: Stash Commands`
The stash is a place to hide changes while you work on something else.

Save changes to stash without commiting them

git stash -u 

<br>

Save your local changes to a new stash
> use git reset --hard to revert changes  
> \<msg> is optional  
> For a quick snapshot omit push and \<msg>  

    git stash push [<msg>]

<br>

Apply changes from the last(or specified) stash and then removes the given stash

    git stash pop

<br>

Move changes from the specified stash into the workspace. The most recent stash is the defualt.

    git stash apply [<stash>]

<br>

Show the changes recorded in the stash as a diff between the stashed state and its original parent. When no \<stash> is given, default is to show the latest one. 

    git stash show [<stash>]

<br>

Remove a single stashed state from the stash list. When no \<stash> is given, it removes the latest one.

    git stash drop [<stash>]

<br>

Remove all the stashed states. Note that those states will then be subject to pruning, and my be impossible to recover

    git stash clear

<br>

Create and check out a new branch named \<branchname> starting from the commit at which the \<stash> was originally created.

    git stash branch <branchname> [<stash>]

<br>

## Stashing Changes
Temporarily save changes in the working directory and index

Save changes to stash
```
git stash                                           

git stash push 
git stash push -m "<message>"
```

<br>

List all stashes
```
git stash list
```

<br>

Apply a specified stash to the working directory
```
git stash apply [<stash number>]
git stash pop [<stash number>]      Applies and removes the specified stash
```

<br>

Remove a specified stash
```
git stash drop [<stash number>]
git stash clear                     Remove all stashes
```

<br>

Show the changes stored in a specified stash (default is latest stash)
```
git stash show                      
git stash show [<stash number>]
```

<br>

Create a new branch from the specified stash and apply that stash to the new branch
```
git stash branch <branchname>
git stash branch <branchname> [<stash number>]
```

<br>

```
git stash push --keep-index             Stash only working directory changes
git stash push --include-untracked      Stash including untracked files
git stash push --all                    Stash all files
```

<br>

# `Using Git Locally: Local Repository`
> A local repository in Git is a version-controlled storage space on a user's local machine, containing the complete history of a project and allowing for changes, commits, and branches to be managed independently from remote repositories.

The local repository has exactly the same features and functionality as any other Git repository

## .git/
> A directory named .git that contains all of your necessary repository files -- a Git repository skeleton.   


### Commits

Store the current contents of the index in a new commit along with a log message from the user describing the changes

    git commit [-m 'msg']

<br>


Commit all files changed since your last commit, except untracked files (i.e. all files that are already listed in the index). Remove files in the index that have been removed from the workspace.

    git commit -a [-m 'msg']

<br>

Modify the last commit with the current index changes

    git commit --amend

<br>

revert to a given commit

    git reset <commit hex>

<br>

Matches the workspace and index to the local tree.
WARNING: Any changes to tracked files in the working tree since commit are lost. Use this if merging has resulted in conflicts and you'd like to start over. Pass ORIG_HEAD to undo the most recent successful merge and any changes after.

    git reset --hard

<br>

Reset local repo and working tree to match a remote-tracking branch.
Use reset --hard origin/main to throw away all commits to the local main branch.
Use this to start over on a failed merge.

    git reset --hard <remote>|<branch>

<br>

Undo the last commit, leaving its changes in the workspace, uncommitted.   
Does not touch the index file or the working tree at all. The only change it makes is to the head of the local repo.

    git reset --soft HEAD^

<br>

## Resetting Changes

Unstage a file, but preserve its contents
```
git reset <file or folder>
```

<br>

Reset the current branch to \<commit>, but do not change the working directory and index (ie. leave changes staged).
```
git reset --soft [<commit>]
```

<br>

Reset the current branch to a \<commit>, update the staging to \<commit>, do not change the working directory.
*NOTE: This is the default if no mode is specified*
```
git reset --mixed [<commit>]
```

<br>

Unstage the entire working directory, and remove changes since \<commit>  
*WARNING: Any changes to tracked files in the working tree since \<commit> are lost.*
```
git reset --hard [<commit>]
```

<br>

Reset the current branch to \<commit>, update the staging to \<commit>, do not change the working directory.
*If working directory conflicts with \<commit> the reset will fail*
```
git reset --keep [<commit>]
```

<br>


Integrate changes in the specified commit into the current branch

    git cherry-pick <commit>

<br>


Reverse a commit specified by <commit> and commit the result.   
This requires the working tree to be clean (no modifications from the HEAD commit).

    git revert <commit>

<br>
    

Show recent commits, most recent on top.  
```
git log
git log --oneline                   (see a shorted version of git log)
git log --decorate                  (include branch and tag names)
git log --stat                      (include stats: files changed, insertions, deletions)
git log --author=<author>           (only include specific author)
git log --after="MMM DD YYYY"       (include commits after a given date)
git log --before="MMM DD YYYY"      (include commits before a given date)
git log --merge                     (show commits involved in the current merge conflicts)   
git log -p                          (show the difference introduced in each commit)
git log --patch                     (same as above)
git log -p -<n>                     (show the last n entries)                             
```

<br>

View the changes between two different commits
```
git diff                    (shows unstaged changes since last commit)
git diff --staged           (shows the changes that have been staged since last commit)
git diff --cached           (same as command above)
git diff <commit> <commit>
```

<br>


## Branches
> A branch in Git is a lightweight, movable pointer to a specific commit that represents an independent line of development, allowing multiple features, fixes, or experiments to be worked on in isolation

Example branch names:
|Branch|Description/Example|
|:-:|:-| 
|main or master   | primary development branch |
|develop          | branch for ongoing development |
|feature/*        | e.g., feature/login, feature/user-profile |
|bugfix/*         | e.g., bugfix/typo-fix, bugfix/crash-on-startup |
|release/*        | e.g., release/v1.0.0, release/v2.1.0 |
|hotfix/*         | e.g., hotfix/critical-bug, hotfix/security-patch |
|experiment/*     | e.g., experiment/new-ui, experiment/performance-tuning |
|chore/*          | e.g., chore/update-dependencies, chore/cleanup-code |
|test/*           | e.g., test/integration, test/unit-tests |
|docs/*           | e.g., docs/readme-update, docs/api-documentation |

<br>
List all local branches in the current rep 

    git branch

<br>

create a new branch

    git branch <branch name>

<br>

switch to a diffrent branch

    git switch <branch name>

<br>

delete a branch

    git branch -d <branch name>

<br>


merge changes to main (while in the main branch)

    git merge <branch to merge>

<br>


List existing branches

    git branch
    git branch -r   (list remote tracking branches)
    git branch -a   (list all branches)

<br>

Create a branch and switch to it

    git checkout -b <name of new branch>

<br>


Switch branches by updating the index and workspace to reflect the specified branch, <branch>, and updating HEAD to be \<branch>

    git switch <branch>

<br>

Merge the changes from \<branch name> into current branch.  
> * Use --no-commit to leave changes uncommitted.   
> * Use --no-ff to create a merge commit even if the merge resolves as a fast forward.  

    git merge <commit or branch>
    git merge <commit or branch> --no-commit
    git merge <commit or branch> --no-ff

<br>


Revert all commits since the current branch diverged from \<upstream branch>, and then re-applies them one-by-one on top of changes from the HEAD of \<upstream branch>

    git rebase <upstream branch>

<br>


Delete a specified branch

    git branch -d <branch>

<br>


# `Using Git with a Remote Repository`
# `Configure User Info`
# `Creating a remote repository with Github`
# `Generating ssh keys for remote access`
# `General Git Remote commands`
# `Workspace Remote commands`
# `Index Remote commands`
# `Stash Remote commands`
# `Remote repository commands`

Download a remote repository and checkout HEAD of the main branch

    git clone <remote repo>

<br>

Incorporate changes from a remote repository into the current branch. 
In its default mode, git pull is shorthand for git fetch followed by git merge FETCH_HEAD

    git pull <remote> <refspec>

<br>

Download objects and refs from another repository

    git fetch <remote> <refspec>

<br>

Update the server with your commits to the current branch.

    git push
    git push --all                      (transfers the commits of all branches)
    git push <remote> <branch>          (push a new or existing branch to the remote repo)
    git push <remote> <local>:<name>    (push a branch to remote repo with a different name. <local> is the local branch name, and <name> is the branch name in the remote repo)

<br>
    

Create a new local branch from a remote-tracking branch

    git branch --track <new branch name> <remote>|<branch>

<br>

Download objects and refs from another repository

    git fetch <remote> <refspec>

<br>

Remove a remote branch.

    git push <remote> --delete <branch>

<br>

