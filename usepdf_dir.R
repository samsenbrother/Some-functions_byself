#define a function for using sentences copyed directly from PDF
#method:pdf_dir('paste the code')
pdf_dir<-function(a){
  eval(parse(text=gsub(' ','',a)))
}