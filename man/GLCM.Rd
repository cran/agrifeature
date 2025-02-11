% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GLCM.R
\name{GLCM}
\alias{GLCM}
\title{Gray Level Co-occurrence Matrix(GLCM).}
\usage{
GLCM(x, d = 1, angle = 0, ngray = 8, grayscale = c(0,255), symmetric = TRUE, prob = FALSE)
}
\arguments{
\item{x}{A numeric matrix.}

\item{d}{an integer value, the distance between the current pixel, and the
pixel to which it is compared.}

\item{angle}{one of "0", "45", "90" or "135", the pixel to which the
current pixel is compared.}

\item{ngray}{an integer value, the number of gray levels to use in calculate GLCM.}

\item{grayscale}{a vector which contain c(min,max) to set the range of value
, if NULL grayscale will be set into the min and max value in x.}

\item{symmetric}{Logical value, if TRUE (default) the matrix will be turn into a symmetric GLCM.}

\item{prob}{Logical value, if TRUE (default) the matrix will be normalized such that
the sum of it's components is 1.}
}
\value{
A GLCM with dimension ngray*ngray table. Each column and row represent a gray level in the image matrix.
}
\description{
This function calculate Gray Level Co-occurrence Matrix(GLCM), which can be used to describe texture of the image.
The default parameters is distance = 1, angle = 0, gray level = 8
}
\examples{
# generate an image data matrix with range 0~255
set.seed(100)
m <- matrix(sample(0:255,64), nrow=8, ncol=8)

# calculate GLCM with defalut parameters
GLCM.m <- GLCM(m)

# calculate probability GLCM
GLCM.m.p <- GLCM(m,prob = TRUE)

}
\references{
Hall-Beyer, M. (2000). GLCM texture: a tutorial. National Council on Geographic Information and Analysis Remote Sensing Core Curriculum, 3, 75.
}
