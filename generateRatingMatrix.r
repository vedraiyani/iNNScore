#
#author vedraiyani
#title slopeone algorythm
#

#sort users and item
user_data <- read.csv("./ml-100k/u.user",FALSE,"|");
users<-user_data$V1;
#free memory user_data variable
remove(user_data);

item_data <- read.csv("./ml-100k/u.item",FALSE,"|");
items<-item_data$V1;
#free memory item_data variable
remove(item_data);

# init rating_matrix
rating_matrix<-matrix(0,length(users),length(items));

#read dataset
data <- read.csv("./ml-100k/u2.base",FALSE,"\t");

#matrix fill up
for(i in 1:length(data$V1)){
  rating_matrix[data[i,1],data[i,2]]<-data[i,3];  
}
#free memory i variable
remove(i)