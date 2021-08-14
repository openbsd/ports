# $OpenBSD: Makefile,v 1.11 2021/08/14 07:01:23 tb Exp $

COMMENT =	simple, modern and secure file encryption tool

MODGO_MODNAME =	filippo.io/age
MODGO_VERSION =	v1.0.0-rc.3
REVISION =	1

DISTNAME =	age-${MODGO_VERSION}
PKGNAME =	${DISTNAME:S/-rc./rc/:S/-v/-/}

CATEGORIES =	security

HOMEPAGE =	https://age-encryption.org/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>
# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go
NO_TEST =	Yes

MODGO_FLAGS +=	-ldflags="-X main.Version=${MODGO_VERSION}"

pre-install:
	${INSTALL_MAN} ${WRKDIR}/${MODGO_MODNAME}/doc/*.1 \
		${DESTDIR}/usr/local/man/man1

.include "modules.inc"

.include <bsd.port.mk>
