# $OpenBSD: Makefile,v 1.16 2000/11/18 18:06:53 brad Exp $

DISTNAME=	audiofile-0.1.11
PKGNAME=	libaudiofile-0.1.11
CATEGORIES=	devel
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.68k.org/pub/michael/ \
		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/audiofile

HOMEPAGE=	http://www.68k.org./~michael/audiofile/

MAINTAINER=	Brad Smith <brad@openbsd.org>

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
