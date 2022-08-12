file = read.csv("covid19_data.csv")
head(file)
library("dplyr")
glimpse(file)

#piechart
zone = table(file$Zone)
per_lebel = round(zone*100/sum(zone),2)
tiff("pie_chart.tiff")
pie(zone,col=rainbow(length(zone)), labels = per_lebel, main = "Percentage of state")
legend("right",c("Centre","East","North","North east","South","West"), fill = rainbow(length(zone)), cex= 0.8)
dev.off()

#barchart
tiff("bar_plot1.tiff")
x = data.frame(group_by(file, Zone) %>% summarise(mean(Cases)))
leg = c("Centre","East","North","North east","South","West")
barplot(x$mean.Cases., xlab = "Zones", ylab = "Mean cases", col = terrain.colors(6), main="Mean distribution of covid zone wise", names.arg = leg)
dev.off()

tiff("bar_plot2.tiff")
par(mar = c(10,5,2,2))
s = arrange(file,desc(Cases))
barplot(s$Cases, xlab = "States", ylab = "Mean cases", col = terrain.colors(27), main="Mean distribution of covid state wise", names.arg = s$State, cex.names = 0.6, las=2, ylim= c(0,1500))
dev.off()


#boxplot
boxplot(file$Cases, file$Recovered, file$Death, ylab= "num", main="box plot", col = c("blue", "Green","Red"), names = c("Cases","recovered","death"), outline = F, horizontal = T)


#scatter polt

plot(log(file$Cases), log(file$Aircrats_movements), xlab = "log of number of cases", ylab = "log of aircraft movement", main = "cases vs aircraft movement", col = "Red", pch = 16)

