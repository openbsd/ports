# $OpenBSD: Makefile,v 1.9 2001/07/20 16:22:33 kevlo Exp $

COMMENT=	visio-like technical drawing

DISTNAME=	dia-0.88.1
CATEGORIES=	graphics
NEED_VERSION=	1.409
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/dia

HOMEPAGE=	http://www.lysator.liu.se/~alla/dia/

LIB_DEPENDS=	gdk_pixbuf.2::graphics/gdk-pixbuf \
		art_lgpl.5::graphics/libart \
		popt::devel/popt \
		xml2.6::textproc/libxml

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-gnome
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
