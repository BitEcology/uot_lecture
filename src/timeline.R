### Ecological History
### Timeline
### MKLau 27Oct2015

library(timeline)
data(ww2)
eco.t <- read.csv('../doc/ecology_timeline.csv')
eco.t <- apply(eco.t,2,as.character)
birth <- as.numeric(sapply(eco.t[,2],function(x) strsplit(x,split='-')[[1]][1]))
death <- as.numeric(sapply(eco.t[,2],function(x) strsplit(x,split='-')[[1]][2]))
eco.df <- data.frame(person=eco.t[,1],Group=rep('ecologists',nrow(eco.t)),StartDate=birth,EndDate=death)
eco.eve <- data.frame(Event=eco.df[,1],Date=eco.df[,3],Side=eco.df[,2])

timeline(eco.t[1,],eco.eve,event.label.method=3,text.size=2,event.text.size=2,event.spots=15)
