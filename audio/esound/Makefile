# $OpenBSD: Makefile,v 1.14 2000/06/10 17:39:12 espie Exp $
# $FreeBSD: Makefile,v 1.8 1999/03/09 01:08:46 nectar Exp $

DISTNAME=	esound-0.2.16
CATEGORIES=	audio
NEED_VERSION=	1.300
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/esound

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	audiofile::devel/libaudiofile

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-libwrap

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/esd.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
