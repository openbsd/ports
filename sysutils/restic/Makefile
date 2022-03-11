COMMENT =	fast, efficient and secure backup program

MODGO_MODNAME =	github.com/restic/restic
MODGO_VERSION =	v0.12.1

DISTNAME =	restic-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://restic.net/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>
# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread


MODULES =	lang/go

NO_TEST =	Yes

do-install:
	${MODGO_INSTALL_TARGET}
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.1 ${PREFIX}/man/man1

.include "modules.inc"

.include <bsd.port.mk>
