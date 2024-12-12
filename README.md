This project is an analysis of the relationship between body mass (g) and flipper length (mm) in Gentoo penguins. The data was recorded between 2007 and 2009 in the Palmer Archepalago. 

Inside this repository you will find:

Data Folder - contains all data required. Raw data (penguins_raw.csv) from the palmerpenguins package and clean data (penguins_clean.csv). Actions done to 'clean' the data are specified in the script.
Figures - contains two figures: a raw exploratory scatter plot (gentoo_explorplot.svg) and a final results scatter plot with a fitted regression line (gentoo_resultsplot.svg).
Functions - contains the separately coded functions that were used in the main script (cleaning.R). 
R.profile - special script that is automatically executed when users run the main script (allows customisation of the behaviour of R environment)
.gitignore - contains files and directors that are excluded from being tracked by git, for example the renv library as it is very large
PenguinAssignmentTemplate.rmd - rmd version of the main script (please don't worry it says 'template', it was just because this file originated from a template that I was given )
PenguinAssignmentTemplate.html - html version of the main script 
PenguinsAssignment36.rproj - configuration file that helps R studio to organise and manage the project. Allows user to open project in R studio.
renv.lock - a file that has captured to state of the project's environment and stored all package dependencies 

Setup Instructions:
1) Click on PenguinsAssignment36 and copy the url. The url should end with with PenguinsAssignment36 eg like this: https://github.com/githubusername/PenguinsAssignment36
2) Open R studio -> File -> New Project -> Version Control -> Git
3) Paste the url into the the box that says 'Repository URL'. 
4) Tick open in new session and click create project. This should download this entire github repository and you should be able to go to you files maanger and see the directory above with all the files.
5) Run renv::restore() to restore the renv environment and the stored packages that the script depends on (these are stored in the renv.lock file you have now downloaded within the repo). You may need to install renv if it isn't already installed, use install.packages("renv").
6) The script should run now.


