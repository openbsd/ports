# $OpenBSD: Makefile,v 1.6 1999/06/14 03:41:51 brad Exp $

DISTNAME=	audiofile-0.1.7
PKGNAME=	libaudiofile-0.1.7
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.68k.org/pub/michael/ \
		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= gnome-1.0/sources

NEED_VERSION=	1.73

MAINTAINER=	rohee@openbsd.org

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	@${MKDIR} ${LOCALBASE}/share/aclocal/
	@${INSTALL_DATA} ${WRKSRC}/audiofile.m4 ${LOCALBASE}/share/aclocal/
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
