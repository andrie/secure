#' @export
print.public.key <- function(x, ...) {
  cat("<public_key> ", PKI::raw2hex(fingerprint(x), ":"), "\n", sep = "")
}

# From Simon Urbanek
fingerprint <- function(x) {
  der <- PKI::PKI.save.key(x, "DER")

  PKI::PKI.digest(unlist(lapply(c(list(charToRaw("ssh-rsa")), PKI::ASN1.decode(PKI::ASN1.decode(der)[[2]])[2:1]), function(o) c(writeBin(length(o), raw(), endian="big"), o))), "MD5")
}