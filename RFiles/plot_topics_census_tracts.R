library(ggplot2)
library(ggmap)

# Put latitudes/longitudes here (here are examples)
# Note the order -- the rest of this is organized under the assumption that there are 10 points in each category
lat <- c(34.123, 34.234)
lng <- c(-118.123,-118.359)

# Enter sizes for each datapoint 
# (i.e., decreasing in order as (5,4,3,2,1,1,1,1,1,1,5,4,3,2 ... )
size <- c(5,5)

# Enter categories for each datapoint
# (i.e., 1,1,1,1,1,1,1,1,1,1,2,2,2 ... )
cat <- c(1,2)

# Create separate dataframes for each category 
# (i.e. the first 3 categories are census tracts for top factors, last category is top homeless population)
alat <- lat[1:10]
lon <- lng[1:10]
test <- size[1:10]
a <- cat[1:10]
df1 <- as.data.frame(cbind(alat,lon,test, a))

alat <- lat[11:20]
lon <- lng[11:20]
test <- size[11:20]
a <- cat[11:20]
df2 <- as.data.frame(cbind(alat,lon,test,a))

alat <- lat[21:30]
lon <- lng[21:30]
test <- size[21:30]
a <- cat[21:30]
df3 <- as.data.frame(cbind(alat,lon,test,a))

alat <- lat[31:40]
lon <- lng[31:40]
test <- size[31:40]
a <- cat[31:40]
df4 <- as.data.frame(cbind(alat,lon,test,a))

# Choosing colors for each category
cols <- c("4" = "red", "3" = "blue", "2" = "darkgreen", "1" = "orange")

# Get main map, centered (you could also do this for each dataframe)
mainmap <- get_map(location = c(lon = mean(lng), lat = mean(lat)), zoom = 10, maptype = "satellite", scale = 2)

ggmap(mainmap) +   
  geom_point(data = df1, aes(x = lon, y = alat, size= test, color = factor(a), alpha = 0.8))+
  geom_point(data = df2, aes(x = lon, y = alat, size= test, color = factor(a), alpha = 0.8))+
  geom_point(data = df3, aes(x = lon, y = alat, size= test, color = factor(a), alpha = 0.8))+
  geom_point(data = df4, aes(x = lon, y = alat, size= test, color = factor(a), alpha = 0.8))+
  scale_colour_manual(values=cols, labels=c("Factor1", "Factor2", "Factor3", "Population"))+
  guides(size = FALSE, alpha = FALSE)+
  ggtitle('Top factor and population census tracts in Los Angeles County 2017')+
  xlab('Latitude')+
  ylab('Longitude')+
  labs(color = "Top factors")
  
