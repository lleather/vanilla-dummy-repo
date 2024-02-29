library(terra)

# create a dummy raster
r <- rast(ncol=10, nrow=10, xmin=-150, xmax=-80, ymin=20, ymax=60)

# assign values
values(r) <- 1:ncell(r)

#  inspect

plot(r)

# add polygon and points
lon <- c(-116.8, -114.2, -112.9, -111.9, -114.2, -115.4, -117.7)
lat <- c(41.3, 42.9, 42.4, 39.8, 37.6, 38.3, 37.6)
lonlat <- cbind(id=1, part=1, lon, lat)
pts <- vect(lonlat)
pols <- vect(lonlat, type="polygons", crs="+proj=longlat +datum=WGS84")
points(pts, col="red", pch=20, cex=3)
lines(pols, col="blue", lwd=2)

# load an example raster
f <- system.file("ex/logo.tif", package="terra")
r <- rast(f)
r

# plot a single layer
plot(r[[2]])
