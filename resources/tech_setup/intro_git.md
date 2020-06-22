

## DAY TWO: Git, tidy data, Loading and Joining Platelet Data

### Workflow set up

#### Version Control
We will be using git on Nero and Stanford hosted GitLab this summer.
 * [Background](../../resources/reference/git_gitlab.md) on git and GitLab
 * [Instructions](../../resources/tech_setup/gitlab_setup.md) for setting up GitLab 

Jenny Bryan's Book [Happy Git for the useR](https://happygitwithr.com) is an excellent reference for git. 

#### RMarkdown
RMarkdown documents help with reproducible analysis of code. They're similar to iPython (or Jupyter) notebooks, and include sections of text interspersed with code "chunks" and the output of running those chunks.

Within your local `course_materials` directory, open up the `week1/tidyr_intro.Rmd` file. To create new Rmarkdown files, go to File > New File > Rmarkdown.

Press the `Preview` button to render to HTML. This creates a pretty output HTML page with your notes, code, and the output of running your analysis.
*Note - you should track only the .Rmd file, not the HTML file in git.*

We encourage you to use RMarkdown in your work!

### Data processing - tidyverse introduction
We went through the `tidyr_intro.Rmd` to get familiar with some tidyverse commands and using them on the platelet data. 

Ben gave an excellent intro to R value types (use 'class') and data.frames.
*REMEMBER: factors are risky, don't use factors unless you make a concentrated decision to do so!*

Ben then gave an intro to tidyverse commands, we focused on:
`select()`, `filter()`, `mutate()`, `group_by()` and `summarize()`. 

Then we went over how to join the data using `left_join()`, `right_join()`, `inner_join()`, and `full_join()`.

Later, Ben discussed what tidy data is:

Hadley Wickham's [Intro to R For Data Science](https://r4ds.had.co.nz/) is an excellent resource for this.

### Finishing the platelet activity
Get into pairs and discuss the platelet activity you worked on before, make sure you agree on answers!

At the end, save, commit, and push to GitLab with:
`git push origin <my_branch>`


### Tidying the platelet data

Big picture: We will be looking at the data from two perspectives: 
 - `patient_trajectories` 
    + what patient features are related to platelet transfusion? 
    + what does a patient trajectory look like?
 - `aggregate_data` 
    + what hospital population counts are predictive of platelet transfusions?
    + how do hospital patterns change over time?

#### Full group activity - how do the datasets fit together?
We will use the board to talk about how the data are linked together. Each group will put up a couple summary/important fields, and we will draw lines between the different tables.
 - What are the keys? 
 - What are the unique identifiers? 
 - How would you put it together?

#### Processing all the directories
Yesterday in pairs, you summarized each of the four types of data (`census`, `cbc`, `inventory`, `transfused`) and looked closely at one day - `day19`. Now it's time to put together all the data from the directory. We are going to use the skills you just learned to do this.

First, let's set up a git for this. We will all be working with the platelet data - so let's all clone the `platelet_processing` repository from the group GitLab. (Note: here we are not forking and then cloning, we are just cloning.) 

There is a directory `individual_datasets` that we will be working in.
First, in your pair, have someone create a branch (e.g. 'cbc', 'census', etc.) using the plus button. You will be collaborating on this branch.

Clone platelet_processing to your directory on Nero (refer to the GitLab Setup [Instructions](../../resources/tech_setup/gitlab_setup.md) as needed. 

Switch to the branch you are working on using:
 `git checkout <branch_name>`
 
This is where you will write the files for processing your data. 

#### Write a function to read in all the data
Many of the datasets have data in the `seed_data_hashed/` directory. Look for your files here, you will need to read this in too! (Note many of these days are negative!)

Write a function to read in an individual file of your file type and make it tidy.
 * Which fields do you want to extract?
 * What makes these data tidy?
 
The function should take as input a file name, and output tidy data in a data.frame.

As you work on this function, commit it to your local platelet_processing repository on Nero.

Test that this function works on a couple different files, make sure it is performing as you expect!

Try to read in all the files!

#### Sharing your code
At the end, we'll have you push the code to GitLab so that everyone can access this!

##### Collaborating with your partner
You and your partner are working on a branch together. 
You each have your own local copy of the code on Nero. In order for your partner to download your code, it must be pushed to GitLab.

##### Pushing to the shared repository
Once you have made a couple edits, `push` to your shared branch on GitLab. But first, you need to `pull` from the branch to make sure you are up-to-date.
For example, if your partner has already pushed changes, you will want to get that update.
  E.g. for the CBC group:
  `git pull origin cbc` and then run `git push origin cbc`
If you have edited the same file, you will get an error message about a merge conflict. This is not a problem! 

**Dealing with Merge conflicts**:
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

##### Merging to the origin
Finally, we have all updated our branches, but we want to add this to the origin.
Click on `Merge Requests` on the left sidebar and start a new request. Then select merge from your branch to the master and fill in the form. We will then approve the merge request so everyone can get these files. 

Now everyone needs to pull from the updated repository, and you will have the functions we all just wrote!



