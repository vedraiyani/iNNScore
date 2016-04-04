#
#author vedraiyani
#
#dev value of given item
# @param v1 vector 
# @param v2 vector 
# @return cosine similarity
#

cos_sim <- function(v1,v2){
  
  #check length
  if(length(v1)!=length(v2)){
    return (-1);
  }
  
  #find corated_element
  index=1:length(v1);
  corated_index=intersect(index[v1!=0],index[v2!=0]);
  
  corated_v1=a[corated_index];
  corated_v2=b[corated_index];
  
  #counts dotproduct of vectors
  dot=sum(corated_v1*corated_v2);
  
  #counts mod value of vector
  corated_v1_val=sqrt(sum(corated_v1^2));
  corated_v2_val=sqrt(sum(corated_v2^2));
  
  #count cos inverse
  arc_cos=dot/(corated_v1_val*corated_v2_val);
  
  return (arc_cos);
}