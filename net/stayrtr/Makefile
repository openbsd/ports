COMMENT=	RPKI-To-Router implementation in Go

MODGO_MODNAME=	github.com/bgp/stayrtr
MODGO_VERSION=	v0.6.2
REVISION=	0
EPOCH=		0

DISTNAME=	stayrtr-${MODGO_VERSION}

CATEGORIES=	net
HOMEPAGE=	https://www.github.com/bgp/stayrtr

# BSD 3-Clause
PERMIT_PACKAGE=	yes

WANTLIB=	c pthread

MODULES=	lang/go

.include "modules.inc"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/stayrtr
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/stayrtr/

.include <bsd.port.mk>
