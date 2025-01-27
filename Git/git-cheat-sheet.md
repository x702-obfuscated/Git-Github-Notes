# ` Commonly Performed Actions using Git and Github
This file is meant to act as a cheat sheet for performing common actions when using git as a 

# Quick Git and Github Vocabulary
| **Vocabulary**         | **Definition**                                                                                      |
|-----------------------|-----------------------------------------------------------------------------------------------------|
| Amend                 | Modifies the last commit by changing its commit message or adding more changes.                    |
| Blame                 | Shows who last modified each line of a file and when.                                              |
| Branch                | A separate line of development in a repository.                                                    |
| Checkout              | Switching between different branches or restoring files in the working tree.                      |
| Cherry-pick           | Applies a commit from one branch to another.                                                        |
| Clone                 | Creating a local copy of a remote repository.                                                      |
| Commit                | A snapshot of changes in the repository with a unique ID.                                           |
| Commit Message        | A description of changes made in a commit.                                                         |
| Conflict              | A situation where changes from different branches cannot be automatically merged.                 |
| Detached HEAD         | A state where HEAD points to a specific commit instead of a branch.                                |
| Diff                  | Shows the differences between two versions of a file or two commits.                               |
| Fast-forward Merge    | A merge where the current branch is moved forward to the target branch without conflicts.          |
| Fetch                 | Retrieves updates from a remote repository without merging them.                                   |
| Fork                  | A personal copy of someone else’s repository.                                                       |
| Git Attributes        | A file defining attributes for pathnames to customize Git's behavior.                              |
| Gitignore             | A file specifying intentionally untracked files to ignore.                                          |
| HEAD                  | A pointer to the current branch or commit in the working directory.                                |
| Index                 | Another term for the staging area where changes are prepared before committing.                    |
| Local Tree            | A term for the structure of files and directories in your local repository.                        |
| Merge                 | Integrates changes from one branch into another.                                                   |
| Patch                 | A file containing differences between two versions of files.                                        |
| Pull                  | Fetches changes from a remote repository and merges them into your local branch.                    |
| Pull Request (PR)     | A request to merge changes from one branch into another, typically used for code reviews.          |
| Push                  | Sends local commits to a remote repository.                                                         |
| Rebase                | Moves or combines a sequence of commits to a new base commit.                                       |
| Ref                   | A reference to a commit, such as a branch name or tag.                                              |
| Repository (Repo)     | A storage space for your project’s files and history.                                               |
| Reset                 | Undoes changes in the repository by modifying the staging area and working directory.              |
| Revert                | Creates a new commit that undoes changes made by a previous commit.                                 |
| Squash                | Combines multiple commits into a single commit.                                                     |
| Stash                 | Temporarily saves changes that are not yet ready to be committed.                                   |
| Tag                   | A label attached to a specific commit, often used to mark important points like releases.           |
| Upstream              | The remote repository or branch that your local branch is tracking.                                 |
| Working Tree          | The directory on your local machine where you make changes to files.                                |
| Tracked Files         | Files that are being monitored by Git for changes.                                                 |
| Untracked Files       | Files in the working directory that are not being tracked by Git.                                   |
| Bookmark              | An older term used to describe a reference or tag in Git.                                           |
| Downstream            | Refers to branches or repositories that receive changes from another branch.                        |
| Fast-forward          | A type of merge where the branch is moved forward without creating a merge commit.                  |
| Worktree              | An additional working directory associated with a single Git repository.                           |




# Simple Workflow Commands

Retrieve changes from remote repo
```
git pull --rebase
```
<br>


Add changes to index
```
git add .
```

<br>

Commit changes
```
git commit -m "<message>"
```

<br>

Upload changes to remote repo
```
git push
```

<br>

# Creating a Git Repo

Create a new local repository with a specified name
```
git init                    Create git repo in current directory
git init <dir-path>         Create git repo in specified directory

```

<br>

# Cloning a Remote Repo

Download a project and its entire history from a remote repo
```
git clone <url>
```

<br>

# Configure local Repo
> Configuring user info for all local repos

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

# Adding Changes to Index
Taking a 'snapshot' of files to stage changes in your working directory for the next commit

Snapshot a file to prepare for version (add a file to the index)
```
git add <file or folder>
git add .                   Adding all files in the current directory*
```

<br>

# Resetting Changes or Reverting to a previous Commit

Unstage a file, but preserve its contents
```
git reset <file or folder>
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


# Checking the Status of a Repo

Check the status of a repo
```
git status

git status -s               provide a more concise format
git status -b               show the branch and tracking information
git status -u               include untracked files
git status --ignored        include ignored files
```

<br>

# Stashing Changes
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


# Making a Commit

```
git commit                  
git commit -m "<message>"

git commit --amend          Fix the previous commit with new changes and message.

```

<br>

# Viewing the Commit History
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

git log --follow <file>             show the version history for a file, including renames
```
<br>

# Handling Branches

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


# Retrieving Changes from Remote Repo

Download all history from the repo bookmark
```
git fetch <bookmark>
```

<br>

Combine bookmark's branch into current local branch
```
git merge <bookmark>/<branch>
```

<br>

Download bookmark history and incorporate changes (combines the fetch and merge commands)
```
git pull

git pull --rebase
```

<br>



# Pushing Changes to the Remote Repo

Upload all local branch commits to GitHub
```
git push
git push <alias> <branch>
```

<br>


## Tagging a Commit
Create a tag name
```
git tag <tagname>
```

<br>

Tag a specific commit
```
git tag <tagname> <commit-hash>
```

<br>

List all tags
```
git tag
```

<br>

Push tags to  a remote repo
```
git push <remote> <tagname>
```

<br>

Delete a tag
```
git tag -d <tagname>                        This is for local repos
git push <remote> --delete <tagname>        This is for remote repos
```
<br>

## Creating a Pull Request
This combines Git and Github

1. Fork the Repository you wish to work on.

<br>

2. Clone the Forked Repository
```
git clone <url-path>
```
<br>

3. Create a New Branch
```
git switch <new-branch>
```

<br>

4. Make changes, and commit
```
git add .
git commit -m "<message>"
```

<br>

5. Push the changes to your Fork
```
git push <remote> <branchname>
```

<br>

6. Create a pull Request on Github
* Go to the original repository on GitHub.
* Click on the "Pull Requests" tab.
* Click "New Pull Request."
* Select main (or the target branch) as the base branch and my-feature-branch as the compare branch.
* Review the changes.
* Add a title and description.
* Click "Create Pull Request."

<br>


# How to delete the history of a branch
### Create a New Orphan Branch
```
git checkout <commit-hash>
git checkout --orphan new-branch
git add .
git commit -m "Initial Commit Text"
```
### Replace the Main Branch
```
#Delete the old main branch
git branch -D main

#Rename the current branch to main
git branch -m main
```

### Force Push to Remote Repository (if applicable)
```
git push origin --delete <old-branch-name>

#Create a new branch if needed(ie. for development)
git checkout -b new-branch














Initialize a Repository:

git init - Creates a new Git repository in the current directory.
Clone a Repository:

git clone <repository-url> - Copies a remote repository to your local machine.
Check Repository Status:

git status - Shows the status of changes in your working directory and staging area.
Add Changes:

git add <file> - Stages changes in a specific file for the next commit.
git add . - Stages all changes in the current directory and subdirectories.
Commit Changes:

git commit -m "commit message" - Records the staged changes with a descriptive message.
View Commit History:

git log - Displays a log of recent commits.
Create a Branch:

git branch <branch-name> - Creates a new branch.
Switch Branches:

git checkout <branch-name> - Switches to the specified branch.
git switch <branch-name> - An alternative to checkout for switching branches.
Merge Branches:

git merge <branch-name> - Merges changes from the specified branch into the current branch.
Delete a Branch:

git branch -d <branch-name> - Deletes a local branch (only if it has been merged).
git branch -D <branch-name> - Forcefully deletes a local branch.
Pull Changes:

git pull - Fetches and integrates changes from the remote repository into your current branch.
Push Changes:

git push - Uploads local commits to the remote repository.
Resolve Conflicts:

Manual Resolution: Edit files to resolve conflicts, then use git add and git commit.
Automatic Merge Tools: Use tools or IDE integrations to help resolve conflicts.
View Differences:

git diff - Shows changes between the working directory and the staging area.
git diff --staged - Shows changes between the staging area and the last commit.
Stash Changes:

git stash - Temporarily saves changes not yet committed, so you can switch branches or perform other tasks.
Apply Stash:

git stash apply - Reapplies the most recent stashed changes.
Revert Changes:

git revert <commit> - Creates a new commit that undoes the changes made in a specific commit.
git reset --hard <commit> - Resets the current branch to a specific commit, discarding all changes after that commit.
Tag a Commit:

git tag <tag-name> - Creates a tag for a specific commit, typically used for releases.
Fetch Changes:

git fetch - Retrieves changes from the remote repository without merging them.
Configure Repository:

git config - Adjusts repository settings (e.g., user name, email).