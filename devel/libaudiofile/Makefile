# $OpenBSD: Makefile,v 1.13 2000/07/19 05:56:27 brad Exp $

DISTNAME=	audiofile-0.1.9
PKGNAME=	libaudiofile-0.1.9
CATEGORIES=	devel
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/audiofile

HOMEPAGE=	http://www.68k.org./~michael/audiofile/

MAINTAINER=	rohee@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/audiofile.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
