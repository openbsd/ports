# $OpenBSD: Makefile,v 1.8 2021/06/25 13:58:31 abieber Exp $

COMMENT =	simple, modern and secure file encryption tool

MODGO_MODNAME =	filippo.io/age
MODGO_VERSION =	v1.0.0-rc.3

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

.include "./modules.inc"

.include <bsd.port.mk>
