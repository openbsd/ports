# $OpenBSD: Makefile,v 1.11 2006/01/02 18:15:53 bernd Exp $

COMMENT=		'dockapp-making standard library for Window Maker'

DISTNAME=		libdockapp-0.4.0
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		dockapp 1.0
CATEGORIES=		devel

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		Xext Xpm

MASTER_SITES=		ftp://shadowmere.student.utwente.nl/pub/WindowMaker/

USE_X11=		Yes
USE_LIBTOOL=		Yes
NO_REGRESS=		Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdockapp
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/libdockapp

.include <bsd.port.mk>
