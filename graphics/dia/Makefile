# $OpenBSD: Makefile,v 1.18 2002/12/09 15:37:23 brad Exp $

COMMENT=	visio-like technical drawing

DISTNAME=	dia-0.88.1
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/dia/0.88/}

HOMEPAGE=	http://www.lysator.liu.se/~alla/dia/

LIB_DEPENDS=	gdk_pixbuf.2::graphics/gdk-pixbuf \
		art_lgpl_2.5::graphics/libart \
		popt::devel/popt \
		xml2.6::textproc/libxml

MAINTAINER=	Mark Grimes <mark@stateful.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static --disable-gnome
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+=		XML_CONFIG=xml2-config

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		patch-*

.include <bsd.port.mk>
