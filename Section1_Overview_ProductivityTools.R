#Section 1 Overview Productivity Tools

#In this course, you will learn:
#How to leverage the many useful features provided by RStudio
#How to use Unix/Linux to manage your file system
#How to start a repository on GitHub
#How to perform version control with git

#Course overview
#Section 1: Installing Software
#You will learn how to install R, RStudio, git (and git bash for Windows users), create a GitHub account, create a GitHub repository, and connect RStudio to your GitHub account.

#Section 2: Unix
#You will learn the basics of managing your filesystem from the terminal with Unix commands such as mv and rm. 

#Section 3: Reproducible Reports
#You will learn to create data science reports using R Markdown and the knitr package.

#Section 4: Git and GitHub
#You will learn to use git and GitHub from the command line to clone and create repositories.

#Section 5: Advanced Unix 
#You will learn other Unix commands, including arguments, getting help, pipes, and wildcards that are helpful in data science.

#=====================================
#Introduction to Productivity Tools

#General Guiding Principles:
  #Be systematic when organizing your filesystem
  #Automize when possible
  #Minimize the use of the mouse

#What we will learn:
  #Unix shell
  #Git and GitHub
  #R markdown

#Installing R:
#Key points:
#You need to install R before using RStudio, which is an interactive desktop environment.
#Select base subdirectory in CRAN and click download.
#Select all default choices in the installation process.
#We recommend selecting English for language to help you better follow the course.
#One can try using the R console, but for productivity purposes, we can switch to RStudio.

#Download R from CRAN
#You can find the latest version of R for your operating system at the CRAN website.

#Installing RStudio
#Key points:
#You can download the latest version of RStudio at the RStudio website.
#The free desktop version is more than enough for this course.
#Make sure to choose the version for your own operating system.
#Choose "Yes" for all defaults in the installation process.

#Installing Packages
#Key points:
#We will be using tidyverse and dslabs packages for this course, which do not come preinstalled in base R.
#Install packages from R console: install.packages("pkg_name")
#Install packages from Rstudio interface: Tools > install packages (allow autocomplete)
#Once installed, we can use library("pkg_name") to load a package each time we want to use it
#Check the packages you have installed
#Good practice: make a script to install all the packages you need for a fresh R

#Code
#install.packages("dslabs")  # to install a single package
#install.packages(c("tidyverse", "dslabs")) # to install two packages at the same time
installed.packages() # to see the list of all installed packages
                 
#Running commands while running scripts
#Key points:
#RStudio has many useful features as an R editor, including the ability to test code easily as we write scripts and several autocomplete features.

#Keyboard shortcuts:
#Save a script: Ctrl+S on Windows and Command+S on Mac
#Run an entire script:  Ctrl+Shift+Enter on Windows Command+Shift+Return on Mac, or click "Source" on the editor pane
#Run a single line of script: Ctrl+Enter on Windows and Command+Return on Mac while the cursor is pointing to that line, or select the chunk and click "run"
#Open a new script: Ctrl+Shift+N on Windows and Command+Shift+N on Mac

#Code:
library(tidyverse)

#Keeping Organized with RStudio Projects
#Key points:
#RStudio provides a way to keep all the components of a data analysis project organized into one folder and to keep track of information about this project.
#To start a project, click on File > New Project > New repository > New project > decide the location of files and give a name to the project, e.g. "my-first-project". This will then generate a Rproj file called my-first-project.Rproj in the folder associated with the project, from which you can double click to start where you last left off.
#The project name will appear in the upper left corner or the upper right corner, depending on your operating system. When you start an RStudio session with no project, it will display "Project: (None)".

#Installing Git Introduction
#Key points#
#Git is a version control system, tracking changes and coordinating the editing of code.
#GitHub is a hosting system for code, which can help with your career profile.
#Git is most effectively used with Unix, but it can also interface with RStudio.

#Installing Git
#Install on Windows
#Download Git bash from https://git-scm.com/
#When asked to choose the default editor for Git, we recommend choosing nano if you do not already know VIM.
#The "git and optional Unix tools from Windows" option will allow you to learn Unix from Rstudio, however, it might interfere with the Windows command line.
#Finally, change the Rstudio preference so that you are using Git bash as the terminal (only for Windows user).

#Install on Mac
#Open the terminal, either from the utility folder or using Cmd+space, and check if you already have Git installed by typing git --version in the command line.
#If you already have Git installed, you will be shown the version number after executing the above. If you do not have Git installed already, you will be prompted to do so.

#Create GitHub account
#Key points:
#Sign up for a GitHub account, with a name that is professional, short, and easy to remember
#Connect to RStudio: global options > Git/SVM, enter the path to git executables
#To avoid typing our GitHub password every time, we create a SSH/RSA key automatically through RStudio with the create RSA key button.

#GitHub Repository
#Key points:
#To create a new GitHub repository and link it to an RStudio project, follow 2 steps:
#Step 1: Initialize a new repo on GitHub by clicking repository > new > choose a descriptive name.
#Step 2: Connect to RStudio (next video).

#Key points:
#In terminal: configure git 
#git config --global user.name "Your Name"
#git config --global user.email "your@email.com"

#In RStudio, create project > Version control > Git
#Git pane: status symbols and color
#Git actions:
  #pull: pull changes from remote repo (if you are in collaboration with others)
  #add: stage files for commit; click on stage box under git pane
  #commit: commit to the local repo; click on "commit" button under git pane; add a commit message
  #push: push to the remote repo on Github
#.gitignore file: details check https://git-scm.com/docs/gitignore

https://rpubs.com/faisalcep/dsProductivityTools