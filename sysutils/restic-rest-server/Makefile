COMMENT =	REST backend for the restic backup tool

MODGO_MODNAME =	github.com/restic/rest-server
MODGO_VERSION =	v0.13.0

DISTNAME =	rest-server-${MODGO_VERSION}
PKGNAME =	restic-${DISTNAME:S/-v/-/}

CATEGORIES =	sysutils

MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

do-install:
	cp ${MODGO_WORKSPACE}/bin/rest-server ${PREFIX}/bin/restic-rest-server

.include "modules.inc"

.include <bsd.port.mk>
