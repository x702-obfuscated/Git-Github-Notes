# `Software Development with Git and Github`

Covered in this file:
1. Version Control Systems
1. Git vs. Github
1. Git Vocabulary
1. Installing Git
1. Git Files




## Note on symbols used in this file:
### Variable Information
> Text inside of <> should be treated as a place holder for variable information
```
<text>    
```

> Text inside of [ ] should be treated as optional parts of commands

    [text]

<br>

# `Version Control Systems`
> A version control system (VCS) is a tool that helps manage changes to source code or other types of files over time. It keeps track of modifications made to files, allowing you to view, compare, and revert to previous versions of the files.

## Types of Version Control Systems
Local Version Control Systems:   
> * Track changes on a single local machine. Examples include older systems like RCS (Revision Control System).  

Centralized Version Control Systems (CVCS):   
> * Use a central server to store the versioned files and track changes. Examples include CVS (Concurrent Versions System) and Subversion (SVN).  

Distributed Version Control Systems (DVCS):  
> * Each user has a full copy of the repository, including its history, on their local machine. Examples include Git and Mercurial.  


## Why do you need a version control system?
> A version control system like Git addresses numerous challenges in software development and collaborative projects by providing a structured way to manage changes, collaborate effectively, and maintain a comprehensive history of a project's evolution. 

> It prevents issues of conflicting changes and overwrites when multiple contributors work on the same files simultaneously by offering robust branching and merging capabilities. 

> Git also facilitates tracking modifications, identifying the source of changes, and reverting to previous versions if necessary, which is crucial for debugging and maintaining code integrity. 

> Git acts as a backup mechanism, ensuring that no work is lost and enabling recovery from accidental deletions or hardware failures. 

> By integrating with continuous integration and deployment tools, Git enhances code quality and streamlines the deployment process. 

<br>

# `Git vs. Github`

## Git
> * basically: a version control system
> * specifically: a distributed version control system (VCS) designed to track changes in source code during software development.
> * can be used independently from Github

Official Git website:  
[https://git-scm.com/](https://git-scm.com/)

Git Documentation:  
[https://git-scm.com/docs](https://git-scm.com/docs)

Git Book: Excellent for beginners:  
[https://git-scm.com/book/en/v2](https://git-scm.com/book/en/v2)

## Github
> * basically: a website that hosts remote Git repos
> * specifically: a web-based platform that provides hosting for remote Git repositories

Official Github website:  
[https://github.com/](https://github.com/)

Github documentation:  
[https://docs.github.com/en](https://docs.github.com/en)



## Git and Github
The information below is amended and based on the information linked below. Check this out for more information:  
[https://ndpsoftware.com/git-cheatsheet.html](https://ndpsoftware.com/git-cheatsheet.html)

When working with Git and Github there are 5 areas to think about:
||||
|:-:|:-:|:-|
|Workspace|--> |current "working copy of the repo"|
|Index |--> |staging area for files that are to be commited|
|Stash|--> |where modifications can be stored while working on something else|
|Local Repository|--> |the local .git directory|
|Upstream Repository|--> |a repository of your code shared over a network typically the internet aka. 'remote'|

***Github is the most common remote repository option***

<br>

# `Git Vocabulary`

| **Vocabulary**         | **Definition**                                                                                      |
|-----------------------|-----------------------------------------------------------------------------------------------------|
| Amend                 | Modifies the last commit by changing its commit message or adding more changes.                    |
| Blame                 | Shows who last modified each line of a file and when.                                              |
| Branch                | A separate line of development in a repository.                                                    |
| Checkout              | Switching between different branches or restoring files in the working tree.                      |
| Checkout Detached     | Switching to a specific commit without attaching it to a branch.                                   |
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
| Glob Patterns         | Patterns used to match file names or paths, e.g., `*.txt` for all text files.                      |
| Graph                 | A visual representation of commits and their relationships.                                        |
| HEAD                  | A pointer to the current branch or commit in the working directory.                                |
| Hook                  | Custom scripts that Git can execute at certain points.                                              |
| Index                 | Another term for the staging area where changes are prepared before committing.                    |
| Local Tree            | A term for the structure of files and directories in your local repository.                        |
| Merge                 | Integrates changes from one branch into another.                                                   |
| Patch                 | A file containing differences between two versions of files.                                        |
| Pull                  | Fetches changes from a remote repository and merges them into your local branch.                    |
| Pull Request (PR)     | A request to merge changes from one branch into another, typically used for code reviews.          |
| Push                  | Sends local commits to a remote repository.                                                         |
| Rebase                | Moves or combines a sequence of commits to a new base commit.                                       |
| Rebase Interactive    | Allows interactive editing of commits during a rebase.                                              |
| Ref                   | A reference to a commit, such as a branch name or tag.                                              |
| Reflog                | A log of changes to the tip of branches and other references.                                        |
| Remote                | A version of the repository hosted on a server.                                                     |
| Repository (Repo)     | A storage space for your project’s files and history.                                               |
| Reset                 | Undoes changes in the repository by modifying the staging area and working directory.              |
| Revert                | Creates a new commit that undoes changes made by a previous commit.                                 |
| Squash                | Combines multiple commits into a single commit.                                                     |
| Stash                 | Temporarily saves changes that are not yet ready to be committed.                                   |
| Submodule             | A repository embedded within another Git repository.                                                |
| Tag                   | A label attached to a specific commit, often used to mark important points like releases.           |
| Upstream              | The remote repository or branch that your local branch is tracking.                                 |
| Working Tree          | The directory on your local machine where you make changes to files.                                |
| Tracked Files         | Files that are being monitored by Git for changes.                                                 |
| Untracked Files       | Files in the working directory that are not being tracked by Git.                                   |
| Bookmark              | An older term used to describe a reference or tag in Git.                                           |
| Downstream            | Refers to branches or repositories that receive changes from another branch.                        |
| Fast-forward          | A type of merge where the branch is moved forward without creating a merge commit.                  |
| Worktree              | An additional working directory associated with a single Git repository.                           |
| Glob Patterns         | Patterns used to match file names or paths, e.g., `*.txt` for all text files.                      |

<br>

# `Installing Git`
The most up to date directions for installing Git can be found here:  
[https://git-scm.com/downloads](https://git-scm.com/downloads)

<br>

# `Using Git Locally: Git Files`

## The .git/ directory
When you run

    git init

a .git directory is created. This directory is the main directory where Git stores all of its internal data, configuration files, and metadata for the repository.

Below is the directory structure created when 'git init' is executed.
```
.git/
├── config
├── description
├── HEAD
├── hooks/
│   ├── applypatch-msg.sample
│   ├── commit-msg.sample
│   ├── fsmonitor-watchman.sample
│   ├── post-update.sample
│   ├── pre-applypatch.sample
│   ├── pre-commit.sample
│   ├── pre-merge-commit.sample
│   ├── prepare-commit-msg.sample
│   ├── pre-push.sample
│   ├── pre-rebase.sample
│   ├── pre-receive.sample
│   └── update.sample
│
├── info/
│   └── exclude
│
├── objects/
│   ├── info
│   └── pack
│
├── refs/
│   ├── heads
│   ├── tags
│   └── remotes
```

config : 
> * Stores the repository-specific configuration settings.  

description : 
> * Used by Gitweb; typically not used in standard Git operations.

HEAD : 
> * Points to the current branch reference. 

hooks/ : 
> * Contains sample scripts for various Git hooks (e.g., pre-commit, post-commit).

info/ : 
> * Contains the exclude file, which is used to specify files that should be excluded from version control.

objects/ : 
> * Stores all the content (blobs, trees, commits) for the repository.

info and pack : 
> * Subdirectories that help manage object storage.

refs/ : 
> * Contains references to commit objects (e.g., branches and tags).

heads : 
> * Stores references to the heads of branches.  

tags : 
> * Stores references to tags.

remotes : 
> * Stores references to remote-tracking branches.  

<br>

## The .gitignore file
.gitignore file used to ignore certain files

> The .gitignore file is not automatically created, and is an optional file used within a git repository. The .gitignore file is used define what files to exclude from the git version control. 

SEE ALSO: 
* The .gitignore file in this git repository. 
* The example-gitignore file in this git repository.

### Writing the .gitignore file
> * Blank lines or lines starting with # are ignored.  
> * Standard glob patterns work, and will be applied recursively throughout the entire working tree.  

Glob patterns are like simplified regular expressions that shells use. 
> * An asterisk ( * ) matches zero or more characters 
> * [abc] matches any character inside the brackets (in this case a, b, or c) 
> * Question marks ( ? ) match a single character
> * Brackets enclosing characters separated by a hyphen ( [0-9] ) match any character between them (in this case 0 through 9). 
> * Use two asterisks to match nested directories; a/**/z would match a/z, a/b/z, a/b/c/z, and so on.
> * Start patterns with a forward slash ( / ) to avoid recursivity.  
> * End patterns with a forward slash ( / ) to specify a directory.  
> * Negate a pattern by starting it with an exclamation point ( ! ).  


<br>

## The .gitattributes file
.gitattributes defines how Git handles particular files

> The .gitattributes files is not automatically created, and is an optional file used within a git repository. The .gitattributes file is used to define how Git should handle particualr files.

SEE also:
* The example-gitattributes file in this git repository

For example:
> * Setting End-Of-Line normalization  
> * Mark files as binary  
> * Specifying diff algorithms  
> * Assigning merge strategies  
> * Define the text encoding for specific files  

syntax for .gitattributes
```
<pattern> <attribute>[=<value>]
```

### Key Attributes:  
Text and End-of-Line Normalization:
* text  --> Treats the file as text, normalizing line endings.
* text=auto --> Automatically detects text files and normalizes line endings.
* text eol=lf --> Forces LF line endings.
* text eol=crlf --> Ensures CRLF line endings.

Binary:
* binary --> Treats the file as binary, disabling text diffs and merges.

Diff:
* diff --> Specifies a custom diff driver for the matching files.

Merge:
* merge --> Specifies a custom merge driver for the matching files.
* merge=binary --> Treats the file as binary to disable merging

Text Encodings:
* eol --> Sets the end-of-line style. Common values are lf (Line Feed) and crlf (Carriage Return + Line Feed).
    * eol=lf --> Ensures LF line endings.
    * eol=crlf --> Ensures CRLF line endings.

Filtering:
* filter --> Assigns a filter driver to preprocess files before they are checked in or out

Export-Ignore: 
* export-ignore --> Marks files to be ignored when generating an archive with git archive

Linguist:   
These attributes are used by GitHub's Linguist library for language detection and repository statistics.
* linguist-language --> Sets the language for the matched files.
* linguist-detectable --> If set to false, excludes the matched files from language statistics.
* linguist-vendored --> Marks files as vendored (e.g., third-party libraries).
* linguist-generated --> Marks files as generated code.
* linguist-documentation --> Marks files as documentation.


Keywords:
* ident --> Expands \$Id$ keyword with the file’s SHA-1 hash.
* keywords --> Expands keywords in the matching files.

CRLF Handling:
* crlf --> Controls line ending conversion.
* crlf --> Respects the core.autocrlf configuration.
* crlf=input --> Converts CRLF to LF on commit but leaves LF untouched.
* crlf=true --> Converts LF to CRLF on checkout and CRLF to LF on commit.
* crlf=false --> No conversion.

Sparse Checkout:
* sparse-checkout --> Controls whether the matched files are included in the working directory in a sparse checkout.
* sparse-checkout=ignore --> Excludes files from the sparse checkout.

Lockable:
* lockable --> Marks files as lockable for use with the Git LFS lock command

Notes:
* notes --> Associates notes with the matching files

End-of-Line Conversion
* working-tree-encoding: Defines the working-tree encoding

<br>