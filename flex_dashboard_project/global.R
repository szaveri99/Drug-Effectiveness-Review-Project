library(wordcloud)
library(tm)
library(SnowballC)
library(wordcloud2)
library(syuzhet)
library(ggplot2)
library(plotly)

top_data <- read.csv("word_n_data/drugReviewData.csv")
clean_data <- function(x){
  
  stop <- scan("word_n_data/stop.txt",what = "character",comment.char = ";")
  corpusdd <- x
  corpusdd <- Corpus(VectorSource(corpusdd))
  corpusdd <- tm_map(corpusdd , tolower)
  corpusdd <- tm_map(corpusdd , removePunctuation)
  corpusdd <- tm_map(corpusdd , removeNumbers)
  corpusdd <- tm_map(corpusdd , removeWords , c(stopwords("english"),stop))
  corpusdd <- tm_map(corpusdd , stripWhitespace)
  corpusdd <- tm_map(corpusdd , stemDocument)
  
  myDTM = TermDocumentMatrix(corpusdd,
                             control = list(minWordLength = 1))
  
  m = as.matrix(myDTM)
  
  sort(rowSums(m), decreasing = TRUE)
  
}

pos_data <- function(x){
  
  pos <- scan("word_n_data/positive-words.txt",what = "character",comment.char = ";")
  
  pos.words <-  match(c(names(x)), c(pos))
  pos.words <-  !is.na(pos.words)
  a = as.matrix(x[pos.words])
  
  sort(rowSums(a), decreasing = TRUE) 
  
}

neg_data <- function(x){
  
  neg <- scan("word_n_data/negative-words.txt",what = "character",comment.char = ";")
  
  neg.words <-  match(c(names(x)), c(neg))
  neg.words <-  !is.na(neg.words)
  a = as.matrix(x[neg.words])
  
  sort(rowSums(a), decreasing = TRUE) 
  
}
sent <- function(x){
  
  #x <- as.character(x)
  #s_vec <- get_sentiment(x,method = "syuzhet")
  senti_data <- get_nrc_sentiment(as.character(x))
  #head(senti_data,10)
  
  td <- data.frame(t(senti_data))
  #td_new <- data.frame(rowSums(td[2:NCOL(td)]))
  td_new <- data.frame(rowSums(td[NCOL(td)]))
  names(td_new)[1] <- "count"
  td_new <- cbind("sentiment" = rownames(td_new), td_new)
  
  rownames(td_new) <- NULL
  td_new2<-td_new[1:nrow(td_new),]
  
  # ggplotly(sentiment, data=td_new2, weight=count, geom="bar", fill=sentiment, ylab="Total Count")+
  #   xlab("Sentiments")+
  #   theme(axis.text.x = element_text(angle = 45))+theme(plot.title = element_text(hjust = 0.5))
  
  
}

srch <- function(a,b){
  
  if(is.empty(a)){
    return()
  }
  else{
  y <- grepl(a,as.character(top_data$drugName),ignore.case = TRUE)
  sd <- top_data[y,]
  sd <- sd[sd$rating == b,]
  sd <- sd[!duplicated(sd$condition),]
  }
}

effect <- function(sd){
  x <- data.frame(subset(sd,sd$category_class == "effective"))
  x[,c(1,4,2)]
}

neu <- function(sd){
  
  x <- data.frame(subset(sd,sd$category_class == "Neutral"))
  x[,c(1,4,2)]
}

adv <- function(sd){
  x <- data.frame(subset(sd,sd$category_class == "Adverse"))
  x[,c(1,4,2)]
}

review_data <- function(sd){
  x <- data.frame(sd)
  x[,3]
}


# effect_wrd <- function(sd){
#   x <- data.frame(subset(sd,sd$category_class == "effective"))
#   x[,3]
# }
# 
# neu_wrd <- function(sd){
#   
#   x <- data.frame(subset(sd,sd$category_class == "Neutral"))
#   x[,3]
# }
# 
# adv_wrd <- function(sd){
#   x <- data.frame(subset(sd,sd$category_class == "Adverse"))
#   x[,3]
# }
