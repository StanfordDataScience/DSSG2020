### Git/GitLab Intro

### Why version control? What is git?
Git is a version control software. It was designed to help people track changes and collaborate on large software projects.

### Why GitLab?
GitHub, GitLab, and Bitbucket are three platforms built around git. They include user interfaces that make collaboration and project management easier. We are using Stanford GitLab instead of GitHub because it allows us to create shared repositories that are hosted at Stanford. 
(Note: even though the repository is at Stanford, do not push the data that is on Nero. It is fine (and we encourage you!) to push your code!)

### Quick intro to git

#### Cloning and forking

**Clone**:
Make a copy of the repository in your local directory so you can edit this.
`git clone <path_to_repository>`
Note - for GitLab/Nero, use the 'https' link to clone! 

**Fork**:
Use the User Interface on GitLab (or GitHub) to Fork. This creates a copy of the repository in *your* account first, and then you have to clone it to your local directory.

Forking vs cloning: 
 * both are variations of the same thing - getting a copy of the repository
 * forking is generally used when you are taking someone else's project and making changes to it because it creates a copy on your account
 * cloning is more often used for collaborating on a shared project, or copying your own remote to a local directory
 
**Where is the origin?**
 - The *origin* is the repository on GitLab (or GitHub or somewhere else) that you have cloned from
 - This is useful for updating / sharing your code
 - If you fork, the origin is the copy you created in *your* account. If you clone, it is the original copy.
 
#### Branches
Check what branch you are on (it will be starred):
`git branch`

Creating a new branch and switch to it:
`git checkout -b <my_branch>`

Switch branches:
`git checkout <my_branch>`

The *master* branch is the default branch that is created when you clone. It is generally better to create another branch, edit/commit/push on this branch and then put in a **Merge Request** to have these merged into the master. You can do this on the user interface on GitLab.

#### Committing, Pushing, and Pulling
Committing saves a change in your local copy of the repository. Pushing takes that change and pushes it to another location. In this case, we are pushing it to the origin, which is on GitLab.

Before you push, you want to make sure your branch is up-to-date with the changes on GitLab. To do this you *fetch* the data from GitLab and then *merge* it to your local repository. You can do this by excecuting a fetch, and then merge, or a pull.

Pulling:
 `git pull <from> <to>` excecutes `git fetch` (to grab the changes from the updated location) and `git merge` to merge these changes with your data


Pushing:
`git push <from> <to>`
A common version of this is `git push origin <my_branch>`


When you pull, if two people have edited the same file, you will get an error message about a merge conflict. This is not a problem! 

#### Dealing with Merge conflicts:
  1) Edit the file with the error. The merge conflicts are surrounded by 
  
  ```
  <<< HEAD
  
  edit1
  
  ==== 
  
  edit2 >>>
  
  ```
  Select one of the two regions and delete the added characters.
  2) Save and commit this edit.
  3) Now push!

For GitLab / Nero setup, go [here](gitlab_setup.md)


