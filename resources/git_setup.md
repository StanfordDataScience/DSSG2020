## Git Introduction

### Why Version Control? What is Git?
Git is a version control software. It was designed to help people track changes and collaborate on large software projects.

### Why GitHub?
GitHub is a platform built around Git. It includes user interfaces that make collaboration and project management easier. 
*(Note: do not push the data that is on Nero. It is fine (and we encourage you!) to push your code!)*

### Quick Intro to Git

#### Cloning and Forking

Clone:
Make a copy of the repository in your local directory so you can edit this.
`git clone <path_to_repository>`.
*(Note: use the 'https' link to clone.)*

Fork:
Use the User Interface on GitHub to Fork. This creates a copy of the repository in *your* account first, and then you have to clone it to your local directory.

Forking vs. cloning: 
 * both are variations of the same thing - getting a copy of the repository
 * forking is generally used when you are taking someone else's project and making changes to it because it creates a copy on your account
 * cloning is more often used for collaborating on a shared project, or copying your own remote to a local directory
 
**Where is the origin?**
 - The *origin* is the repository on GitHub that you have cloned from
 - This is useful for updating / sharing your code
 - If you fork, the origin is the copy you created in *your* account. If you clone, it is the original copy.
 
#### Branches
- Check what branch you are on (it will be starred):
`git branch`

- Creating a new branch and switch to it:
`git checkout -b <my_branch>`

- Switch branches:
`git checkout <my_branch>`

- Delete branch remotely:
`git push origin --delete <remoteBranchName>`

The *master* branch is the default branch that is created when you clone. It is generally better to create another branch, edit/commit/push on this branch and then put in a **Merge Request** to have these merged into the master. You can do this on the user interface on GitHub.

#### Add, Remove, Rename files for Version Control
If you want to start version-controlling existing files, you can accomplish that with *git add* command that specify the files you want to track:
`git add README.md` or `git add *.py` for example.

Similarly, to remove a file from your tracked files on Git, you can do
`git rm README.md`.
If you want to keep the file on your local hard drive but not have Git track it anymore, simply do
`git rm --cached README.md`.

If you want to rename a file in Git, you can run:
`git mv <file from> <file to>`.

#### Committing, Pushing, and Pulling
Committing saves a change in your local copy of the repository. Pushing takes that change and pushes it to another remote location. In this case, we are pushing it to the origin, which is on GitHub. 

- Committing:
`git commit -m 'your comment here describing changes made'`.

Before you push, you want to make sure your branch is up-to-date with the changes on GitHub. To do this you *fetch* the data from GitHub and then *merge* it to your local repository. You can do this by excecuting a fetch, and then merge, or a *pull*.

- Pulling:
 `git pull <remote repo name> <branch name>` excecutes `git fetch` to grab the changes from the updated location and `git merge` to merge these changes with your data. *(Note: you should ensure that your local work is committed before running the pull command.)*


- Pushing:
`git push <remote repo name> <branch name>`.
A common version of this is `git push origin master`. This will push the code from your local repository's 'master' branch to that branch of the 'origin' on GitHub.

The first time you do this, you will have to set your global Git config.
These commands are: `git config --global user.name <your_name>` and `git config --global user.email <your_email>`.


When you pull, if two people have edited the same file, you will get an error message about a merge conflict. This is not a problem! 

#### Dealing with Merge conflicts:
  1. Edit the file with the error. The merge conflicts are surrounded by 
  
  ```
  <<< HEAD
  
  edit1
  
  ==== 
  
  edit2 >>>
  
  ```
  Select one of the two regions and delete the added characters.
  2. Save and commit this edit.
  3. Now push!

#### Check Status and Commit History
You can easily check the status of your files by running `git status`. To see a list of commit history, use `git log`.

#### Help Page
You can pull up the Git Manual for each command by simplying typing `git push --help`, for example.

### Additional Reference: 
You may find Chapter 2 of the [documentation](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository) useful. [Here](https://github.github.com/training-kit/downloads/github-git-cheat-sheet.pdf) is a cheat sheet summarizing commonly used commands for quick reference.

