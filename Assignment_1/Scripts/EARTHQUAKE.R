require(xlsx)
EARTHQUAKE <- read.xlsx("../Data/EARTHQUAKE.xlsx", sheetIndex = 1)
head(EARTHQUAKE)
EARTHQUAKE[which(is.na(EARTHQUAKE$Longitude)),]

min(EARTHQUAKE$Time)
max(EARTHQUAKE$Time)
min(EARTHQUAKE$Latitude)
max(EARTHQUAKE$Latitude)
min(EARTHQUAKE$Longitude)
max(EARTHQUAKE$Longitude)
min(EARTHQUAKE$Depth.Km)
max(EARTHQUAKE$Depth.Km)
min(EARTHQUAKE$Magnitude)
max(EARTHQUAKE$Magnitude)

summary(EARTHQUAKE)
boxplot(EARTHQUAKE$Depth.Km, las = 2, ylab = "Depth.Km", main = "Boxplot of Depth.Km")
boxplot(EARTHQUAKE$Magnitude, las = 2, ylab = "Magnitude", main = "Boxplot of Magnitude")
boxplot(EARTHQUAKE$Latitude, las = 2, ylab = "Latitude", main = "Boxplot of Latitude")
boxplot(EARTHQUAKE$Longitude, las = 2, ylab = "Longitude", main = "Boxplot of Longitude")

max_Depth.Km <- quantile(EARTHQUAKE$Depth.Km, 0.75, na.rm=TRUE) + (IQR(EARTHQUAKE$Depth.Km, na.rm=TRUE) * 1.5 )
min_Depth.Km <- quantile(EARTHQUAKE$Depth.Km,0.25, na.rm=TRUE) - (IQR(EARTHQUAKE$Depth.Km, na.rm=TRUE) * 1.5 )

max_Magnitude <- quantile(EARTHQUAKE$Magnitude, 0.75, na.rm=TRUE) + (IQR(EARTHQUAKE$Magnitude, na.rm=TRUE) * 1.5 )
min_Magnitude <- quantile(EARTHQUAKE$Magnitude,0.25, na.rm=TRUE) - (IQR(EARTHQUAKE$Magnitude, na.rm=TRUE) * 1.5 )

max_Latitude <- quantile(EARTHQUAKE$Latitude, 0.75, na.rm=TRUE) + (IQR(EARTHQUAKE$Latitude, na.rm=TRUE) * 1.5 )
min_Latitude <- quantile(EARTHQUAKE$Latitude,0.25, na.rm=TRUE) - (IQR(EARTHQUAKE$Latitude, na.rm=TRUE) * 1.5 )

max_Longitude <- quantile(EARTHQUAKE$Longitude, 0.75, na.rm=TRUE) + (IQR(EARTHQUAKE$Longitude, na.rm=TRUE) * 1.5 )
min_Longitude <- quantile(EARTHQUAKE$Longitude,0.25, na.rm=TRUE) - (IQR(EARTHQUAKE$Longitude, na.rm=TRUE) * 1.5 )

Depth.Km_idx <- which(EARTHQUAKE$Depth.Km < max_Depth.Km & EARTHQUAKE$Depth.Km > min_Depth.Km)
Magnitude_idx <- which(EARTHQUAKE$Magnitude < max_Magnitude & EARTHQUAKE$Magnitude > min_Magnitude)
Latitude_idx <- which(EARTHQUAKE$Latitude < max_Latitude & EARTHQUAKE$Latitude > min_Latitude)
Longitude_idx <- which(EARTHQUAKE$Longitude < max_Longitude & EARTHQUAKE$Longitude > min_Longitude)

boxplot(EARTHQUAKE$Depth.Km[Depth.Km_idx], las = 2, ylab = "Depth.Km", main = "Boxplot of Depth.Km")
boxplot(EARTHQUAKE$Magnitude[Magnitude_idx], las = 2, ylab = "Magnitude", main = "Boxplot of Magnitude")
boxplot(EARTHQUAKE$Latitude[Latitude_idx], las = 2, ylab = "Latitude", main = "Boxplot of Latitude")
boxplot(EARTHQUAKE$Longitude[Longitude_idx], las = 2, ylab = "Longitude", main = "Boxplot of Longitude")
