% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/algorithm-functions.R
\name{apply_spectral_clustering}
\alias{apply_spectral_clustering}
\title{apply_spectral_clustering}
\usage{
apply_spectral_clustering(A, k, sig1 = 0.8, sig2 = 1, type = 1)
}
\arguments{
\item{A}{corresponde a matriz de similaridade calculada.}

\item{k}{corresponde ao número de grupos a ser considerado}

\item{sig1}{corresponde a um real}

\item{sig2}{corresponde a um real}

\item{type}{Corresponde a um inteiro indicando qual tipo de normalização deseja
executar.
\itemize{
\item 1: Não normalizado.
\item 2: Normalizado segundo Shi e Malik (2000).
\item 3: Normalizado segundo Ng, Jordan, e Weiss (2002).
}}
}
\value{
Retorna uma lista contendo o resultado do kmeans sobre o
}
\description{
Essa função realiza o cálculo do spectral clustering de acordo com o tipo de normalização.
}
\examples{
\dontrun{
set.seed(2018)
n <- 150
r <- rnorm(n, 5, .25)
theta <- runif(n, 0, 2 * pi)
c1 <- data.frame(x = rnorm(n), y = rnorm(n))
c2 <- data.frame(x = r * cos(theta), y = r * sin(theta))
points1 <- rbind(c1, c2)
A <- as.matrix(dist(points1))
S <- build_similarity_graph(A)
L <- create_graph_laplacian(S)
}
}
