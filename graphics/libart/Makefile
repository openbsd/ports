# $OpenBSD: Makefile,v 1.15 2005/12/26 16:20:09 steven Exp $

COMMENT=		"high-performance 2D graphics library"

VERSION=		2.3.17
DISTNAME=		libart_lgpl-${VERSION}
PKGNAME=		libart-${VERSION}
SHARED_LIBS=		art_lgpl_2	5.17
MODGNU_SHARED_LIBS=	art_lgpl_2	''
CATEGORIES=		graphics

HOMEPAGE=		http://www.artofcode.com/libart.html

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# lgpl
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
