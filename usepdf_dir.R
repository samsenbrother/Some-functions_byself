#define a function for using sentences copyed directly from PDF
#method:pdf_dir('paste the code')
pdf_dir<-function(a,all=T){
  a<-gsub('¤','*',a)
  a<-gsub('^> ','  ',a)
  a<-gsub('<¡','<-',a)
  a<-gsub('\n[1-9]','\n ',a)
  a<-gsub('^<<+.>$','<-',a)
  if(all==T){
  eval(parse(text=gsub(' ','',a)))
  }
  else{
    parse(text=gsub(' ','',a))->output
    length=length(output)
    for(i in 1:length){
      eval(output[i])
    }
  }
}