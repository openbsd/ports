COMMENT =		scanner for SPDX licenses
MODGO_MODNAME =		github.com/CycloneDX/license-scanner
MODGO_VERSION =		v0.11.0

DISTNAME =		license-scanner-${MODGO_VERSION}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/CycloneDX/license-scanner

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/go
WANTLIB +=		c pthread

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/license-scanner
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/license-scanner/

.include "modules.inc"

.include <bsd.port.mk>
