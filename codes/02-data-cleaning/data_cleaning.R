library(tidyverse)
library(reshape2)
library(dplyr)

player_data<-read_csv('./player.csv')

names(player_data)[names(player_data)=='name.display']='name'
names(player_data)[names(player_data)=='name.first']='first_name'
names(player_data)[names(player_data)=='name.last']='last_name'
names(player_data)[names(player_data)=='info.position']='position'
names(player_data)[names(player_data)=='info.positionInfo']='detailed_position'
names(player_data)[names(player_data)=='nationalTeam.country']='national_team'
names(player_data)[names(player_data)=='birth.date.label']='official_birthday'

player_data=subset(player_data,select=-c(playerId))
player_data=subset(player_data,select=-c(id))
player_data=subset(player_data,select=-c(nationalTeam.demonym))
player_data=subset(player_data,select=-c(currentTeam.name))
player_data=subset(player_data,select=-c(currentTeam.club.id))
player_data=subset(player_data,select=-c(currentTeam.teamType))
player_data=subset(player_data,select=-c(currentTeam.shortName))
player_data=subset(player_data,select=-c(currentTeam.id))
player_data=subset(player_data,select=-c(currentTeam.altIds.opta))
player_data=subset(player_data,select=-c(birth.date.millis))
player_data=subset(player_data,select=-c(altIds.opta))

player_data$info.shirtNum=as.numeric(player_data$info.shirtNum)

write_csv(player_data,"./player.csv")