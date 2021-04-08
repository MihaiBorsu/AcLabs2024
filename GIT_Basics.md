# Basic GIT commands

## Installing GIT :
https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Basic Notions :
```commit``` = snapshot of the project at a given time

```master``` = master branch where the final solutions is

```branch``` = pointer to a specific commit

```merge``` = combines work from two different branches together. Merging creates "a special commit" which has 2 unique parents.

```rebase``` = combines branches, copying a set of commits and plops them down somewhere else. Advantage: a nice linear sequence of commits

```HEAD``` = symbolic name for the currently checked out commit. HEAD always points to the most recent commit which is reflected in the working tree. Normally, HEAD points to a branch name. When you commit, the status of branch is altered and this change is visible through HEAD. Sometimes, HEAD is hiding under master.
```Detaching HEAD``` = mean attaching HEAD to a commit instead of a branch

## List of basic commands

##### Configure author and email to be used with your commits
    git config --global user.name "John Doe"
    git config --global user.email john.doe@gmail.com
##### Create a new local empty repository :
    git init
##### Checkout a repository :
- local :
    ``` git clone /path/to/repository ```
- from a remote server :
    ``` git clone user@host:/path/to/repository ```

##### Add files (adding files to staging (index)):
    git add <filename>
    git add *
##### List the changes :
    git status
##### Commit changes (to local working repository, --amend command is a convenient way to modify the most recent commit, by letting you combine staged changes with the previous commit instead of creating an entirely new commit):
    git commit -m "Commit message"
    git commit -a
    git commit --amend
##### Check the changes:
    git log
##### Connect to a remote repository :
    git remote add origin <server>
##### List all configured remote repositories (origin is the associated name of a remote repository) :
    git remote -v
##### Push changes to the master branch of remote server :
    git push origin master
##### Create a new branch and switch to it :
    git checkout -b <branch_name>
##### Switch to another branch :
    git checkout <branch_name>
##### List all branches :
    git branches
##### Delete a branch (-D = force delete) :
    git branch -d <branch_name>
    git branch -D <branch_name>
##### Create a branch from a commit hash :
    git branch <branch_name> <commit_hash>
##### Push a branch to the remote repository :
    git push origin <branch_name>
##### Push all branches to the remote repository :
    git push --all origin
##### Delete a branch on the remote repository :
    git push origin :<branch_name>
##### Fetch and merge changes from the remote repository to your local working directory :
    git pull
##### Merge a branch into your active branch :
    git merge <branch_name>
##### View differences between the files, eventual merge conflicts or preview changes :
    git diff
    git diff --base <file_name>
    git diff <source_branch> <target_branch>
##### Tags (tag = a way to mark permanently historical points (mark the relevant commits as 'milestones'). A tag can't be checkout, it is only used as anchors) :
    git tag <tag_name> <commit_hash>
##### Push tags to remote repository :
    git push --tags origin
##### Undo local changes from HEAD :
    git checkout -- <filename>
##### Instead, to drop all your local changes and commits, fetch the latest history and point your local master branch to it :
    git fetch origin
    git reset --hard origin/master
##### Navigate through commits :
    ^ = pointing to parent. Accept even an optional number after it, specifying which parent reference to follow because some commits can have multiple parents
    ~ = pointing backward. It accepts even an optional number after it, specifying how many commits to go backwards
######   ``` Example: ```

    git checkout master^1  => follows the first parent
    git checkout master^2  => follows the second parent

    git checkout HEAD~^2~2   => HEAD goes back one commit, then select second parent, then go back 2 commits
##### Reset changes (reverts changes by moving a branch reference backwards in time to an older commit - "rewriting history", like the actual commit never happend ) :
    git reset HEAD~1
###### ```IMPORTANT:  git reset is working only on the local branches, but it doesn't work for remote branches.```
##### Revert changes on remote branch (creates a new commit c' to introduce changes that exactly reverses the commit of c):
    git revert HEAD
##### List all remote branches on the remote repository :
    git remote show origin
##### Re-assign a branch to a commit hash :
    git branch -f <branch_name> <commit_hash>
##### Check the changes in an understandable fashion :
    git log --oneline
    git log --oneline --decorate --graph --all
    git log --oneline --decorate --graph <branch_name> origin/<remote_branch_name>
##### Cherry-pick (copy a series of commits below your current location (HEAD) in the active branch)
    git cherry-pick <commit1_hash> <commit2_hash> <...>

