library(rtweet) 
api_key<-"6DBN2Fk7QSkeklbHPakKQyaU8"
api_secret<-"EE61cXIvZRMHkSoz6aRMJCwaPaV8piCMjt4tA1jS3ekLrRh6t3"
access_token<-"1567591392888635392-FMsh1qJyv5IgqRTdoylORh5nRlhBA2"
access_secret<-"VxREAEDQ0kZO2dzxMQcKmsIdfMJkAf9nPsZEDaeCLmfGv"


auth=rtweet_bot(api_key, api_secret, access_token, access_secret)
rt <- search_tweets("Premier League", n = 20, include_rts = FALSE,token=auth)
head(rt$text)
