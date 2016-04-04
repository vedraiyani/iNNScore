#
#author vedraiyani
#
#dev value of given item
# @param u user index
# @param i item index
# @param k any int value
# @return cosine similarity
#

kNN_index<-function(u,i,k){
  
  #prepare similarity set
  similarity_set=c();
  
  for(l in 1:length(items)){
    #check it's not requested item
    if(l!=i && rating_matrix[u,l]!=0){
      similarity_set=append(similarity_set,cos_sim(rating_matrix[,i],rating_matrix[,items[l]]));
    }else{
      similarity_set=append(similarity_set,0);
    }
  }
  
  #find k similar item
  NN_index=order(similarity_set,decreasing = TRUE);
  kNN_index=NN_index[1:k];
  
  return(kNN_index); 
}