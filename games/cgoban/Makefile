# $OpenBSD: Makefile,v 1.19 2009/08/10 06:31:41 kili Exp $

COMMENT=	X11 Go Toolset

DISTNAME=	cgoban-1.9.12
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games x11

HOMEPAGE=	http://www.igoweb.org/~wms/comp/cgoban/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 c m pthread-stubs xcb

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu
ALL_TARGET=

NO_REGRESS=	Yes
USE_X11=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgoban ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man6/cgoban.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
