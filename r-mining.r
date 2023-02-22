install.packages("wordcloud")
library(wordcloud)

# File.choose allows you to select a single file, but the benefit is that R will read out the path,
# which you need for the next function
file.choose()

# This assigns the path from the previous step to the variable "Folder" so that we can begin reading
# in the contents

folder <- "/cloud/project/"

# Lists files in the folder
list.files(path=folder)

# Lists files in the folder with the .txt file type
list.files(path=folder, pattern="*.txt")

# Assigns those files to the variable filelist
filelist <- list.files(path=folder, pattern="*.txt")
filelist

filelist <- paste(folder, filelist, sep="")
filelist


typeof(filelist)

# Increases print size
options(max.print = 100000)

# This is the crash point
lapply(filelist, FUN=readLines)