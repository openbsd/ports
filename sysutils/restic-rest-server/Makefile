# $OpenBSD: Makefile,v 1.8 2019/09/15 02:04:00 jsing Exp $

COMMENT =	REST backend for the restic backup tool

V =		0.9.7
DISTNAME =	rest-server-${V}
PKGNAME =	restic-${DISTNAME}
REVISION =	4

CATEGORIES =	sysutils

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://github.com/restic/rest-server/releases/download/v${V}/

MODULES =	lang/go
MODGO_TYPE =	bin

NO_TEST =	Yes

SUBST_VARS +=	VARBASE

ALL_TARGET =	github.com/restic/rest-server

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} run -x build.go

do-install:
	cp ${WRKSRC}/rest-server ${PREFIX}/bin/restic-rest-server

.include <bsd.port.mk>
