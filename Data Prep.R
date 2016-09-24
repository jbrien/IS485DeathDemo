###################
# Describing Data #
###################


#set WD & read in file
setwd("/Users/marja-lisaeitzmann/Desktop/UNR/Class Data/Class Demo")
deaths <- read.csv("Deaths_Limited_2014_Demo_Data.csv")

#take a look at our data frame
head(deaths)

#we have an extra column we might want to remove
#lets set it to NULL
deaths$X <- NULL
#check to see if its gone
head(deaths)

# Sometimes we can create a replica of a variable to test techniqiues on
deaths$sex2 <- deaths$sex
str(deaths)

#######################################
# Let's start exploring our variables #
#######################################

#Look at the class of a single varible
class(deaths$sex)

#change variables to different data classes
deaths$sex <- as.factor(deaths$sex)
class(deaths$sex)

#check out the values in the variable
levels(deaths$sex)


#get a better visual on the data
table(factor(deaths$sex))
plot(table(factor(deaths$sex)))

# what visualization techniques can you find?
# Share on the discussion board



#########################
# Subsetting & Sampling #
#########################

# Take a random sample from your data
deathsample <- deaths[sample(1:nrow(deaths),100),  ]
str(deathsample)

# based on variable values
instate <- deaths[ which(deaths$res_st=='29'), ]
str(instate)


#Sort Variables
sortedbymonth <- deaths[order(deaths$death_mo),] 
head(sortedbymonth)

#based on month
womenjan <- deaths[ which(deaths$death_mo=='1' & deaths$sex=='2'),]
head(womenjan)

studentdeaths <- deaths[ which(deaths$occup=='915'),]
head(studentdeaths)


############################
# Missing & Invalid Values #
############################


#Are there any missing Values?
sexNAs <- is.na(deaths)
table(sexNAs)

#what about the entire data frame
NAs <- is.na(deaths)
table(NAs)

#Lets do a check to make sure its right
str(deaths)
5000*31
table(NAs)
120049+34951

#another way to do this
sum(is.na(deaths))


#Lets Look at the Death Year
class(deaths$death_yr)

#Make sure all the years are in range
yearerror <- deaths$death_yr[deaths$death_yr<2015 | deaths$death_yr>2013] 
table(yearerror)

#Visualize the data
plot(deaths$death_yr)

#look for missing Values
dyearNAs <-is.na(deaths$death_yr)
table(dyearNAs)



