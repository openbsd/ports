# $OpenBSD: Makefile,v 1.3 1999/03/22 04:27:07 brad Exp $

DISTNAME=	audiofile-0.1.6
PKGNAME=	lib${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR=	gnome-1.0/sources

NEED_VERSION=	1.73

MAINTAINER=	rohee@OpenBSD.ORG

BUILD_SEPARATE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	@${MKDIR} ${LOCALBASE}/share/aclocal/
	@${INSTALL_DATA} ${WRKSRC}/audiofile.m4 ${LOCALBASE}/share/aclocal/
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
