# $OpenBSD: Makefile,v 1.27 2004/11/30 01:06:33 espie Exp $

COMMENT=	"technical diagrams drawing tool"

DISTNAME=	dia-0.92.2
CATEGORIES=	graphics

HOMEPAGE=	http://www.gnome.org/projects/dia/

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/dia/0.92/}

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext Xft Xinerama Xrender atk-1.0.0.0 c \
			fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 iconv intl m pango-1.0.0.0 \
			pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
			png z

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		art_lgpl_2.5::graphics/libart \
		popt::devel/popt \
		xslt.1::textproc/libxslt \
		xml2.6::textproc/libxml \
		unicode.0::devel/libunicode

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-static --disable-gnome
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng \
			-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
