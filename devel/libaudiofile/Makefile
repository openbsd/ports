# $OpenBSD: Makefile,v 1.12 2000/03/24 22:11:39 espie Exp $

DISTNAME=	audiofile-0.1.9
PKGNAME=	libaudiofile-0.1.9
CATEGORIES=	devel
NEED_VERSION=	1.213
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/audiofile


MAINTAINER=	rohee@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/audiofile.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
