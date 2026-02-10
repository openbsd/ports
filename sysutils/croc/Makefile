COMMENT =		simply and securely transfer files and folders

MODGO_VERSION =		v10.0.13
MODGO_MODNAME =		github.com/schollz/croc/v10

DISTNAME =		croc-${MODGO_VERSION}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://schollz.com/tinker/croc6/

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
