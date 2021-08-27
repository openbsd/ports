# $OpenBSD: Makefile,v 1.66 2021/08/27 08:38:47 ajacoutot Exp $

COMMENT=		GNOME Docking Library

GNOME_PROJECT=		gdl
GNOME_VERSION=		3.40.0

SHARED_LIBS +=  gdl-3                3.1      # 5.9

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += cairo cairo-gobject epoxy execinfo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gtk-3 harfbuzz iconv
WANTLIB += intl jpeg lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png xcb xcb-render xcb-shm xml2 z

MODULES=		x11/gnome

LIB_DEPENDS=		textproc/libxml \
			x11/gtk+3

MODGNOME_TOOLS=		gobject-introspection

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
