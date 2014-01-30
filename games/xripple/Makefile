# $OpenBSD: Makefile,v 1.20 2014/01/30 22:12:15 sthen Exp $

COMMENT=	screen bottom ripples like a pool of water

DISTNAME=	xripple
PKGNAME=	xripple-1.0
REVISION =	1
CATEGORIES=	games

MASTER_SITES=	http://spacehopper.org/mirrors/

MAINTAINER=	Michael Shalayeff <mickey@openbsd.org>

PERMIT_PACKAGE_CDROM=	no license available
PERMIT_PACKAGE_FTP=	no license available
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb

CONFIGURE_STYLE=imake
ALL_TARGET=	xripple
NO_TEST=	Yes

post-configure:
	@cd ${WRKSRC}; ${MAKE} clean

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xripple ${PREFIX}/bin

.include <bsd.port.mk>
