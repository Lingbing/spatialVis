\name{fortify.map}
\alias{fortify.map}
\title{Fortify method for map objects.}
\usage{\method{fortify}{map} (model, data, ...)}

\description{
  Fortify method for map objects.
}

\details{
  This function turns a map into a data frame than can more
  easily be plotted with ggplot2.
}
\seealso{\code{\link{map_data}} and \code{\link{borders}}}
\arguments{
  \item{model}{map object}
  \item{data}{not used by this method}
  \item{...}{not used by this method}
}
\examples{require("maps")
require("ggplot2")

ca <- map("county", "ca", plot = FALSE, fill = TRUE)
head(fortify(ca))
qplot(long, lat, data = ca, geom = "polygon", group = group)

tx <- map("county", "texas", plot = FALSE, fill = TRUE)
head(fortify(tx))
qplot(long, lat, data = tx, geom = "polygon", group = group, 
colour = I("white"))}
