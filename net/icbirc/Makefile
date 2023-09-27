COMMENT=	proxy IRC client with ICB server

DISTNAME=	icbirc-2.1
REVISION=	4
CATEGORIES=	net
SITES=		https://www.benzedrine.ch/

HOMEPAGE=	https://www.benzedrine.ch/icbirc.html

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=	c

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/icbirc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/icbirc.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
