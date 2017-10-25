## file structure
if (! file.exists("data")) dir.create("data")

if (!file.exists("data/specimens.csv")) {
    download.file("https://ndownloader.figshare.com/files/9582727",
                  "data/specimens.csv")
}
if (!file.exists("data/species.csv")) {
    download.file("https://ndownloader.figshare.com/files/9582730",
                  "data/species.csv")
}
if (!file.exists("data/localities.csv")) {
    download.file("https://ndownloader.figshare.com/files/9582733",
                  "data/localities.csv")
}
if (!file.exists("data/idigbio_rodents.csv")) {
    download.file("https://ndownloader.figshare.com/files/9582724",
                  "data/idigbio_rodents.csv")
}

if (!file.exists("data/idigbio_rodents.sqlite")) {
    download.file("https://ndownloader.figshare.com/files/9583582",
                  "data/idigbio_rodents.sqlite")
}


## knitr options
library(knitr)
library(methods)
knitr::opts_chunk$set(results='hide', fig.path='img/R-nhcdata-',
                      comment = "#>", purl = FALSE, fig.keep='last')
