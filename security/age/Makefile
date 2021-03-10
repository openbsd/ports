# $OpenBSD: Makefile,v 1.7 2021/03/10 23:31:00 abieber Exp $

COMMENT =	simple, modern and secure file encryption tool

MODGO_MODNAME =	filippo.io/age
MODGO_VERSION =	v1.0.0-rc.1

DISTNAME =	age-${MODGO_VERSION}
PKGNAME =	${DISTNAME:S/-rc.1/rc1/:S/-v/-/}

CATEGORIES =	security

HOMEPAGE =	https://age-encryption.org/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>
# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go
NO_TEST =	Yes

MODGO_FLAGS +=	-ldflags="-X main.Version=${MODGO_VERSION}"

MODGO_MODULES =	\
	golang.org/x/crypto	 v0.0.0-20201221181555-eec23a3978ad \
	golang.org/x/net	 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/sys	 v0.0.0-20191026070338-33540a1f6037 \
	golang.org/x/term	 v0.0.0-20201117132131-f5c789dd3221 \
	golang.org/x/text	 v0.3.0

MODGO_MODFILES =	\
	golang.org/x/crypto	 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/sys	 v0.0.0-20190215142949-d0b11bdaac8a

.include <bsd.port.mk>
