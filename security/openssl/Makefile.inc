# XXX Don't use security/openssl/X in other ports unless there's a big problem
# or a specific reason why not to use LibreSSL with that port - it is easy to
# create runtime library conflicts. In those special cases, please add comments
# to the port explaining why OpenSSL is needed instead of LibreSSL and/or
# discuss on ports@.

COMMENT?=	TLS/SSL library and tools

DISTNAME?=	openssl-$V
PKGNAME?=	openssl-$V

CATEGORIES?=	security net

HOMEPAGE?=	https://www.openssl.org/

MAINTAINER?=	Theo Buehler <tb@openbsd.org>

# OpenSSL
PERMIT_PACKAGE?=	Yes

.if ${DISTNAME:Mopenssl*}
EOPENSSL_V?=	eopenssl${V:R:S/.//}
SUBST_VARS+=	EOPENSSL_V
.endif

.if ${V:M1*}
SITES?=		https://github.com/openssl/openssl/releases/download/OpenSSL_${V:S/./_/g}/
.else
SITES?=		https://github.com/openssl/openssl/releases/download/openssl-$V/
.endif
