# $OpenBSD: Makefile,v 1.11 2015/10/30 19:18:14 ajacoutot Exp $

COMMENT=	lightweight Gtk+2 based image viewer

DISTNAME=	geeqie-1.2.2
EXTRACT_SUFX=	.tar.xz
CATEGORIES=	graphics
EPOCH=		0

HOMEPAGE=	http://geeqie.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo exiv2 fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 jpeg lcms2 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread stdc++ tiff z

MASTER_SITES=	http://geeqie.org/

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	x11/gnome/doc-utils

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/xdg-utils \
		graphics/ImageMagick \
		graphics/exiftran

LIB_DEPENDS=	x11/gtk+2 \
		graphics/lcms2 \
		graphics/exiv2

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-doxygen-doc \
		--disable-lirc \
		--disable-lua \
		--disable-gps \
		--with-htmldir=${PREFIX}/share/doc/geeqie \
		--with-readmedir=${PREFIX}/share/doc/geeqie

.include <bsd.port.mk>
