# $OpenBSD: Makefile,v 1.21 2008/02/03 20:52:29 jasper Exp $

COMMENT=		high-performance 2D graphics library

VERSION=		2.3.20
DISTNAME=		libart_lgpl-${VERSION}
PKGNAME=		libart-${VERSION}
SHARED_LIBS +=	art_lgpl_2           5.20     # .5.20
CATEGORIES=		graphics

HOMEPAGE=		http://www.artofcode.com/libart.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libart_lgpl/2.3/}

USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

.include <bsd.port.mk>
