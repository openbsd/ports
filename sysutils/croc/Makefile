COMMENT =		simply and securely transfer files and folders

MODGO_VERSION =		v9.6.15
MODGO_MODNAME =		github.com/schollz/croc/v9

DISTNAME =		croc-${MODGO_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://schollz.com/tinker/croc6/

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES =		lang/go

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/* ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/croc
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/croc/

.include "modules.inc"

.include <bsd.port.mk>
