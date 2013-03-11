# $OpenBSD: Makefile,v 1.23 2013/03/11 11:07:38 espie Exp $

COMMENT=	X11 Go Toolset

DISTNAME=	cgoban-1.9.12
REVISION =	1
CATEGORIES=	games x11

HOMEPAGE=	http://www.igoweb.org/~wms/comp/cgoban/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 c m pthread-stubs xcb

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu
ALL_TARGET=

NO_TEST=	Yes
USE_GROFF =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgoban ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man6/cgoban.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
