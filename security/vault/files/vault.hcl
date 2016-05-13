# $OpenBSD: vault.hcl,v 1.2 2016/05/13 06:06:14 ajacoutot Exp $
#
# Vault server configuration

backend "inmem" {
  address = "127.0.0.1:8500"
  path = "vault"
}

listener "tcp" {
  address = "127.0.0.1:8200"
  tls_disable = 1
}
