# $OpenBSD: Makefile,v 1.1.1.1 2019/12/29 19:27:05 abieber Exp $

COMMENT =	simple, modern and secure file encryption tool

V =		1.0.0-beta2
DISTNAME =	age-v$V
PKGNAME =	age-${V:S/-beta/beta/}

CATEGORIES =	security

HOMEPAGE =	https://age-encryption.org/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://deftly.net/dist/

MODULES =	lang/go
MODGO_TYPE =	bin
NO_TEST =	Yes

ALL_TARGET =	filippo.io/age

do-build:
	mkdir -p ${MODGO_WORKSPACE}/bin
	cd ${WRKDIR} && ${MODGO_CMD} build \
		-o ${MODGO_WORKSPACE}/bin filippo.io/age/cmd/...

.include <bsd.port.mk>
