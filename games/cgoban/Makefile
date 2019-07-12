# $OpenBSD: Makefile,v 1.27 2019/07/12 20:46:15 sthen Exp $

COMMENT=	X11 Go Toolset

DISTNAME=	cgoban-1.9.12
REVISION =	3
CATEGORIES=	games x11

HOMEPAGE=	http://www.igoweb.org/~wms/comp/cgoban/

PERMIT_PACKAGE=	Yes

WANTLIB=	X11 c m xcb

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu
ALL_TARGET=

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgoban ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man6/cgoban.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
