# $OpenBSD: Makefile,v 1.3 2000/11/15 06:56:40 obecian Exp $

DISTNAME=	dia-0.86
CATEGORIES=	graphics
NEED_VERSION=	1.320
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/dia

HOMEPAGE=	http://www.lysator.liu.se/~alla/dia/

LIB_DEPENDS=	gdk_imlib.19::graphics/imlib \
		art_lgpl.5::graphics/libart \
		popt::devel/popt \
		xml.4::textproc/libxml

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-gnome
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	@chmod -R ugo-w ${WRKSRC}

.include <bsd.port.mk>
