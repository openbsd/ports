# $OpenBSD: Makefile,v 1.2 2001/01/05 11:58:55 naddy Exp $

DISTNAME=	libdockapp-0.4.0
CATEGORIES=	devel
NEED_VERSION=	1.336
MASTER_SITES=	ftp://shadowmere.student.utwente.nl/pub/WindowMaker/
HOMEPAGE=	http://shadowmere.student.utwente.nl/

MAINTAINER=	Peter Stromberg <home@wilfried.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

SEPARATE_BUILD=	concurrent

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdockapp
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/libdockapp

.include <bsd.port.mk>
