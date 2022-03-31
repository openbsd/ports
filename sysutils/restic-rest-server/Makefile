COMMENT =	REST backend for the restic backup tool

MODGO_MODNAME =	github.com/restic/rest-server
MODGO_VERSION =	v0.11.0
REVISION =	0

DISTNAME =	rest-server-${MODGO_VERSION}
PKGNAME =	restic-${DISTNAME:S/-v/-/}

CATEGORIES =	sysutils

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

SUBST_VARS +=		VARBASE

MODULES =		lang/go

do-install:
	cp ${MODGO_WORKSPACE}/bin/rest-server ${PREFIX}/bin/restic-rest-server

.include "modules.inc"

.include <bsd.port.mk>
