# $OpenBSD: Makefile,v 1.4 2001/03/09 14:28:48 wilfried Exp $

DISTNAME=		libdockapp-0.4.0
CATEGORIES=		devel
NEED_VERSION=		1.340

HOMEPAGE=		http://shadowmere.student.utwente.nl/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://shadowmere.student.utwente.nl/pub/WindowMaker/

USE_X11=		Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdockapp
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/libdockapp

.include <bsd.port.mk>
