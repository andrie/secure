% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/keys.R
\name{keys}
\alias{keys}
\alias{travis_key}
\alias{github_key}
\alias{local_key}
\title{Retrieve public keys.}
\usage{
travis_key(repo)

github_key(username, i = 1)

local_key(name = getOption("secure.public_key_file"))
}
\arguments{
\item{repo}{Travis repository name (x/y)}

\item{username}{Github username}

\item{i}{Key to use, if more than one}

\item{name}{Name of key. Defaults to \code{~/.ssh/id_rsa}. If null, uses first file in the \code{~/.ssh} directory, otherwise uses first file in \code{~/.ssh} that matches \code{name}.}
}
\description{
Retrieve public keys from local key, travis or github.
}
\details{
Local public key:

If using a local key, then the  location of this key is defined by setting an option. The default value of this key is \code{options(secure.public_key_file = "~/.ssh/id_rsa.pub")}

Local private key:

The default location for the local private key is defined by \code{options(secure.private_key_file = "~/.ssh/id_rsa")}
}
\examples{
travis_key("hadley/dplyr")
github_key("hadley")
\donttest{
local_key()
}
}
