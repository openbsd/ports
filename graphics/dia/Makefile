# $OpenBSD: Makefile,v 1.23 2003/12/08 01:09:15 margarida Exp $

COMMENT=	"technical diagrams drawing tool"

DISTNAME=	dia-0.92.2
CATEGORIES=	graphics

HOMEPAGE=	http://www.lysator.liu.se/~alla/dia/

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/dia/0.92/}

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		art_lgpl_2.5::graphics/libart \
		popt::devel/popt \
		xslt.1::textproc/libxslt \
		xml2.6::textproc/libxml \
		unicode.0::devel/libunicode

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.57

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-static --disable-gnome
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng \
			-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
