# $OpenBSD: Makefile,v 1.17 2000/12/31 19:45:32 brad Exp $

DISTNAME=	audiofile-0.2.0
PKGNAME=	lib${DISTNAME}
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

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/audiofile.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
