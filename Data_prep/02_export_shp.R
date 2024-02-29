library(terra)

# identify path
filename <- system.file("ex/lux.shp", package="terra")

# load data 
s <- vect(filename)

# write data out
outfile <- "shp_test.shp"
writeVector(s, outfile, overwrite=TRUE)

ff <- list.files(patt="^shptest")
file.remove(ff)