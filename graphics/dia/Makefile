# $OpenBSD: Makefile,v 1.21 2003/04/10 18:46:49 jsyn Exp $

COMMENT=	"technical drawing tool"

DISTNAME=	dia-0.90
CATEGORIES=	graphics

HOMEPAGE=	http://www.lysator.liu.se/~alla/dia/

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/dia/0.90/}

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	gdk_pixbuf.2::graphics/gdk-pixbuf \
		art_lgpl_2.5::graphics/libart \
		popt::devel/popt \
		xml2.6::textproc/libxml \
		unicode.0::devel/libunicode

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_NEW=		Yes

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static --disable-gnome
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng \
			-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+=		XML_CONFIG=xml2-config

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		patch-*

.include <bsd.port.mk>
