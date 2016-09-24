######################################
#Introduction to getting set up in R#
#####################################

#When we code in this class we are going to incorporate our data journal
#This means we will chronical all our commands with text comments
#To incorporate this text in R use # in front of the text
#R will ignore this line while its running any code


#Working Directory 

#Find out where your working directory is set 
getwd()
#To change your working directory use Session > Set Working Directory
# or
setwd("/Users/marja-lisaeitzmann/Desktop/UNR/Class Data/Class Demo")

# and enter the directory between the parenthesis
#Find out what files are in your working directory
dir()

#To execute any of the code in this window you can highlight it and click the 
#"Run" button with the green arrow at the top right.

#################
# Packages in R #
#################

#Packages provide a mechanism for loading optional code, data and documentation as needed. 
#The R distribution itself includes about 30 packages.
#R packages are installed into libraries, which are directories in the file system containing a subdirectory for each package installed there.
#https://cran.r-project.org/doc/manuals/r-patched/R-admin.html

#You need to install each package once, then everytime you start a new R session you have to add the library to your R workspace
#As always, there are a few ways to do this

#To install packages
install.packages("lattice")

# or

# Click on the 'Packages' tab > 'Install' > 'Install from' usually the CRAN Repository
# > Type the name of tha package you are looking for. 
# If the package is not there in may need to be imported in another way

# To attach a package to your workspace
library(lattice)

# or

# look for the package in your list and give it a blue check
# this will attach it. Unchecking it will detach it

#########################
# Importing Data into R #
#########################

#Before importing your data into R
#1.Make sure the header is the first line of your sheet
#2.Make sure there are no spaces or special characters in variable labels
#3.R will replace missing values with NA

#Reading in your file
#There are many ways to do this depending on the data
#For Excel and .csv files we will use read.csv
read.csv ("Deaths_limited_2014_Demo_Data.csv")

#This files name is too long so lets change it
deaths <- read.csv("Deaths_Limited_2014_Demo_Data.csv")

#How many columns & rows are in this data set?

dim(deaths)

#Let's see whats in our data
str(deaths)

#See the first and last obervations
head(deaths)
head(deaths, n=10)
tail(deaths, n=5)


##############################
# How Data is Organized in R #
##############################


#Vectors – list of values of the same type. 1 Dimensional (variable)

#Data Frame – Group of vectors, can be used as a relational table. 
#2 Dimensional. Can have different data types as columns but not different observations (rows)

#Matrices – similar to a data frame but the data must all be the same type

#Lists – a structure that can contain several types of data

#####################
# Data Classes in R #
#####################

# numeric - Numeric data (approximations of the real numbers, ℝ)
# integer - Integer data (whole numbers, ℤ)
# factor - Categorical data (simple classifications, like gender)
# ordered - Ordinal data (ordered classifications, like educational level)
# character - Character data (strings)
# raw - Binary data





  