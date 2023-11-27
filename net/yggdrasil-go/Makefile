COMMENT =	experimental fully end-to-end encrypted IPv6 network

MODGO_MODNAME =	github.com/yggdrasil-network/yggdrasil-go
MODGO_VERSION =	v0.5.3

DISTNAME =	yggdrasil-go-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://yggdrasil-network.github.io/

# LGPL-3.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

WANTLIB += c pthread

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/yggdrasil/
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/yggdrasil/
	${PREFIX}/bin/yggdrasil -genconf > \
	    ${PREFIX}/share/examples/yggdrasil/yggdrasil.conf
	mv ${PREFIX}/bin/{,yggdrasil-}genkeys

.include "modules.inc"
.include <bsd.port.mk>
