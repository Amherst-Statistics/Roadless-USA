require(mosaic)
getLocation = function(counter) {
  googleMap(myroadless[counter,"latitude"], myroadless[counter,"longitude"], 
            mark=TRUE, maptype="terrain", radius=1, browse=TRUE)
}
nsamp <- 20
samples <- rgeo(n=nsamp, latlim = c(25, 50), lonlim=c(-65, -125))
myroadless <- data.frame(sample=1:nsamp, latitude=round(samples$lat, 4),longitude=round(samples$lon, 4),
  withinContinent=c(rep(NA, nsamp)),within1mile=c(rep(NA, nsamp)),
  location=character(nsamp))
rm(samples, nsamp)
myroadless
