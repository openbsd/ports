# $OpenBSD: Makefile,v 1.6 2001/10/25 22:34:49 wilfried Exp $

COMMENT=		'dockapp-making standard library for Window Maker'

DISTNAME=		libdockapp-0.4.0
CATEGORIES=		devel
NEED_VERSION=		1.482

HOMEPAGE=		http://shadowmere.student.utwente.nl/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://shadowmere.student.utwente.nl/pub/WindowMaker/

USE_X11=		Yes
NO_REGRESS=		Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdockapp
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/libdockapp

.include <bsd.port.mk>
