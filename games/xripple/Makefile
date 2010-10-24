# $OpenBSD: Makefile,v 1.17 2010/10/24 21:19:03 ajacoutot Exp $

COMMENT=	screen bottom ripples like a pool of water

DISTNAME=	xripple
PKGNAME=	xripple-1.0p1
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.devolution.com/pub/enlightenment/

MAINTAINER=	Michael Shalayeff <mickey@openbsd.org>

PERMIT_PACKAGE_CDROM=	no license available
PERMIT_PACKAGE_FTP=	no license available
PERMIT_DISTFILES_CDROM=	no license available
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb

CONFIGURE_STYLE=imake
ALL_TARGET=	xripple
NO_REGRESS=	Yes

post-configure:
	@cd ${WRKSRC}; ${MAKE} clean

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xripple ${PREFIX}/bin

.include <bsd.port.mk>
