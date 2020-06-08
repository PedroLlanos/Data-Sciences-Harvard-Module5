#Section 4: Git and GitHub

#Additional Git and GitHub resources:
  #Codecademy
  #GitHub Guides
  #Try Git tutorial
  #Happy Git and GitHub for the useR

#Key points:
#Next, we will learn how to use Git and GitHub in the command line.
#Reasons to use Git and GitHub:
  #Version-control: Permits us to keep track of changes we made to code, to revert back to previous versions of files, to test ideas using new branches and decide if we want to merge to the original.
  #Collaboration: On a centralized repo, multiple people may make changes to the code and keep versions synced. A pull request allows anyone to suggest changes to your code.
  #Sharing code

#To effectively permit version control and collaboration, files move across four different areas: Working Directory, Staging Area, Local Repository, and Upstream Repository.
#Start your Git journey with either cloning an existing repo, or initializing a new one.


#Using Git at the Command Line
#Key points:
  #Recap: there are four stages: working directory, staging area, local repository, and upstream repository
  #Clone an existing upstream repository (copy repo url from clone button, and type "git clone <url>"), and all three local stages are the same as upstream remote.
  #The working directory is the same as the working directory in Rstudio. When we edit files we only change the files in this place.
  #git status: tells how the files in the working directory are related to the files in other stages
  #edits in the staging area are not tracked by the version control system by default - we add a file to the staging area by git add command
  #git commit: to commit files from the staging area to local repository, we need to add a message stating what we are doing by git commit -m "something"
  #git log: keeps track of all the changes we have made to the local repository
  #git push: allows moving from the local repository to upstream repository, only if you have the permission (e.g. if it is yours)
  #git fetch: update local repository to  be like the upstream repository, from upstream to local
  #git merge: make the updated local sync with the working directory and staging area
  #To change everything in one shot (from upstream to working dir), use git pull (equivalent to combining git fetch + git merge)
#Code:
pwd
mkdir git-example
cd git-example
git clone https://github.com/rairizarry/murders.git
cd murders
ls
git status
echo "test" >> new-file.txt
echo "temporary" >> tmp.txt
git add new-file.txt
git status
git commit -m "adding a new file" 
git status
echo "adding a second line" >> new-file.txt
git commit -m "minor change to new-file" new-file.txt
git status
git add
git log new-file.txt
git push
git fetch
git merge


#Creating a GitHub Repository
#Key points:
  #Recap: two ways to get started, one is cloning an existing repository, the other is initializing our own
  #Create our own project on our computer (independent of Git) on our own machine
  #Create an upstream repo on Github, copy repo's url
  #Make a local git repository: On the local machine, in the project directory, use git init. Now git starts tracking everything in the local repo.
  #Now we need to start moving files into our local repo and connect local repo to the upstream remote by  git remote add origin <url>
  #Note: The first time you push to a new repository, you may also need to use these git push options: git push --set-upstream origin master. If you need to run these arguments but forget to do so, you will get an error with a reminder.

#Code:
cd ~/projects/murders
git init
git add README.txt
git commit -m "First commit. Adding README.txt file just to get started"
git remote add origin "https://github.com/rairizarry/murders.git"
git push    # you may need to add these arguments the first time: --set-upstream origin master


#In the Data-Sciences-Harvard directory type:
git remote set-url origin https://github.com/PedroLlanos/Data-Sciences-Harvard.git
git push -u origin master
#and to remove file from repo in Git and filesystem:
git rm Section4_ProductivityTools.R
git commit -m "removed file"
git push -u origin master
#or remove only from Git repo
git rm --cached file1.txt
git commit -m "remove file1.txt"