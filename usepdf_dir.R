#define a function for using sentences copyed directly from PDF
#method:pdf_dir('paste the code')
pdf_dir<-function(a){
  a<-gsub('\n[1-9]','\n ',a)
  eval(parse(text=gsub(' ','',a)))
}