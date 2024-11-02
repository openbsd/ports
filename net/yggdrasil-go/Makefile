COMMENT =	experimental fully end-to-end encrypted IPv6 network

MODGO_MODNAME =	github.com/yggdrasil-network/yggdrasil-go
MODGO_VERSION =	v0.5.3
REVISION =	1

DISTNAME =	yggdrasil-go-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://yggdrasil-network.github.io/

# LGPL-3.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

WANTLIB += c pthread

RUN_DEPENDS =	textproc/jq

DOC_DIR =	${PREFIX}/share/doc/${PKGSTEM}

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOC_DIR}/
	mv ${PREFIX}/bin/{,yggdrasil-}genkeys

.include "modules.inc"
.include <bsd.port.mk>
