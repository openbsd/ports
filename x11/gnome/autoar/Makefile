# $OpenBSD: Makefile,v 1.10 2019/12/14 13:18:45 ajacoutot Exp $

COMMENT=		GLib wrapper around libarchive

GNOME_PROJECT=		gnome-autoar
GNOME_VERSION=		0.2.4

SHARED_LIBS +=  gnome-autoar-0            0.0 # 0.0
SHARED_LIBS +=  gnome-autoar-gtk-0        0.0 # 0.0

CATEGORIES=		archivers

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender archive atk-1.0 atk-bridge-2.0 b2 bz2
WANTLIB += cairo cairo-gobject charset crypto epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv intl lz4 lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread xcb xcb-render
WANTLIB += xcb-shm z zstd

MODULES=		x11/gnome

MODGNOME_TOOLS= 	gobject-introspection vala

LIB_DEPENDS=		archivers/libarchive \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
