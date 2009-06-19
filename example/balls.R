#!/usr/bin/Rscript

nballs <- 30
nframes <- 50
scale <- 10
xpos <- runif(nballs,-1,1)
ypos <- runif(nballs,-1,1)

pdf('balls.pdf')

for(i in 1:nframes){
    plot(-1:1, -1:1, type = "n", axes=F, xlab='', ylab='')
    points(xpos, ypos, pch=21, bg=rainbow(nballs,alpha=.5), cex=15)
    
    xpos <- xpos + runif(nballs,-1,1)/scale
    ypos <- ypos + runif(nballs,-1,1)/scale
}
dev.off()

