# $OpenBSD: Makefile,v 1.23 2010/04/01 13:49:21 ajacoutot Exp $

COMMENT=		high-performance 2D graphics library

GNOME_PROJECT=		libart_lgpl
GNOME_VERSION=		2.3.21
PKGNAME=		libart-${VERSION}

SHARED_LIBS +=	art_lgpl_2           5.20     # .5.20

CATEGORIES=		graphics

HOMEPAGE=		http://www.levien.com/libart/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m

MODULES=		x11/gnome

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

.include <bsd.port.mk>
