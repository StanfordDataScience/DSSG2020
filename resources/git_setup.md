
### GitLab setup

We have added all of you to GitLab:
1. Open `code.stanford.edu` in your browser (login with your Stanford credentials if prompted)
2. Make sure you have access to the `dssg_stanford` group: 
   - Go to `Groups` > `Your groups` and then click on dssg_stanford.
   - Within this group we have two git repositories:
     + `platelet_processing.git`
     + `course_materials.git`
   - Click on and check that you can see these two repositories.
3. Now, let's set up Nero to connect to GitLab. Because Stanford GitLab uses two-factor authentication, we need an access token to authenticate.
4. In your browser, go to: [https://code.stanford.edu/profile/personal_access_tokens]
  - Fill in 'Add a personal access token', select 'api' for the level of access. Set the expiration date to '2019-12-31'. For the name, just select something to keep track of this.
  - Press the button 'Create personal access token'
  - The field `Your New Personal Access Token` will appear at the top of the page. **Copy** this token to a secure location on your laptop - e.g. somewhere where you store your passwords. You will need this to log on. 
  *Do not put this in your git repo or put it in a public location!*
  - At any point in the future if you want to get rid of this, you can just click 'revoke' next to the name of the token.

5. Now let's 'fork' the `course_materials.git` repository. Press the fork button on the GitLab user interface, it will give you a "forking" message and then we wait a couple seconds. Then go to your projects, and you should see your own copy of course_materials listed. 
 
Now - the repository is listed as private, so go to "Settings" > "Members" and add the 'dssg_stanford' group.

6. You are going to copy this repository to your local directory. Let's test that the token works! Open up RStudio on Nero and switch to the terminal tab:  
  - Make sure you are in your home directory or a directory within home (not `/share/`!).
  - Type in: `git clone https://code.stanford.edu/<sunet>/course_materials.git`. *This makes a copy of your forked git repository on Nero.*
  - Fill in your Stanford username and the access token we just created (do not use your Stanford password!). 
  - This should create a new directory `course_materials` that contains the course material

7. Take a look at the contents of your forked repository in RStudio.
  - Go to 'File' > 'Open Project', and open the `course_materials` directory 
  - This will load the project. Since it is coming from a git repository, you should have a `Git` tab on the top right. If you do not have this, grab a mentor for help!

#### Creating a branch
We want to create a branch for today's edits. To do this, type:
`git checkout -b <branch_name>`
This creates and switches to the new branch.

#### Editing and committing
Now, let's make a tiny edit:
 - Open the file "week1/tidyr_intro.Rmd" - this is the activity Mike will be working us through today
 - Fill in your name at the name field
 - Within the git tab in RStudio, check the box next to "week1/tidyr_intro.Rmd" (*this is the staging step or "add"*) and click `Commit`. This will open up a new window
  - Fill in a note about the commit. Click `Commit`
  - *Note - we just followed the standard git workflow: modify, stage ("add" or checking that box), and commit.*
You have now committed changes locally. Yay!

#### Pushing to GitLab
Let's push this to a remote
  - Go to the terminal within RStudio and type in: `git remote -v`
  The result should say 'origin' and list the site you cloned from "https://code.stanford.edu/<sunet>/course_materials.git".
  
  - Once this is set, switch to the terminal within RStudio and type in `git push origin <branch_name>`. *This will push the code from your local repository's '<branch_name>' branch (what you just edited) to that branch of the 'origin' (your forked repository) on Stanford GitLab.*
      - The first time you do this, you will have to set your global git config
      These commands are:
         + `git config --global user.name <your_name>`
         + `git config --global user.email <your_email>`
      - You will need to use the access token again every time you push.
   - Open up GitLab in your browser, and switch to this repository. 
   - **Switching branches on gitlab**: On the drop-down menu, where it says "master", press the drop down. Your branch name should appear, click on this.
   - Check that your name appears!
   - Yay! now you've pushed a change to GitLab. 




**Remember - do not commit data!** (the data stays on Nero! in '/share/pi/dssg')
