#
#author vedraiyani
#
#dev value of given item
# @param v1 vector 
# @param v2 vector
# @param k max no of neighboours
# @return cosine similarity
#

iscoreUB <- function(u,i,k){
  
  #TODO: check user,item and rating_matrix exists
  
  score=0;
  for(l in 1:length(items)){
    #make sure it's not requested item and it's in kNN
    
    #check requested item in kNN of lth item
    inkNN=0;
    if(any(kNN_index(u,l,k)==i)){
      inkNN=1;  
    }
    
    #apply score function
    if(l!=i&&inkNN==1){
      score=score+cos_sim(rating_matrix[,i],rating_matrix[,l])*rating_matrix[u,l];
    }
  }
  
  return (score);
}
