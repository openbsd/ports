COMMENT=	X11 Go Toolset

DISTNAME=	cgoban-1.9.14
CATEGORIES=	games x11

HOMEPAGE=	https://cgoban1.sourceforge.net/

PERMIT_PACKAGE=	Yes

WANTLIB=	X11 ICE SM c m

SITES=		${SITE_SOURCEFORGE:=cgoban1/}

CONFIGURE_STYLE=gnu
ALL_TARGET=

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgoban ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man6/cgoban.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
