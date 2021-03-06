% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/encrypt-string.R
\name{encrypt_string}
\alias{encrypt_string}
\alias{decrypt_string}
\title{Encrypt and decrypt simple strings.}
\usage{
encrypt_string(x, vault = NULL)

decrypt_string(x, vault = NULL)
}
\arguments{
\item{x}{Character string to encode}

\item{vault}{Name of secure vault. If \code{NULL} looks for
\code{vault} or \code{inst/vault} in the current directory. If a string,
looks for a secure vault in the package with that name}
}
\description{
This is useful if you want to email secrets to your collaborators. It's
only suitable for short-term communication because there's no way
to re-encrypt the strings if the master key changes (i.e. when you
add or remove users).
}
\examples{
\dontrun{
enc <- encrypt_string("This string is encrypted")
enc
decrypt_string(enc)
}
}
