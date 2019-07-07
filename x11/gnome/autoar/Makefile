# $OpenBSD: Makefile,v 1.9 2019/07/07 11:20:50 ajacoutot Exp $

COMMENT=		GLib wrapper around libarchive

GNOME_PROJECT=		gnome-autoar
GNOME_VERSION=		0.2.3
REVISION=		0

SHARED_LIBS +=  gnome-autoar-0            0.0 # 0.0
SHARED_LIBS +=  gnome-autoar-gtk-0        0.0 # 0.0

CATEGORIES=		archivers

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += bz2 cairo cairo-gobject crypto epoxy expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv intl lz4 lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += xcb xcb-render xcb-shm z fribidi zstd

MODULES=		x11/gnome

MODGNOME_TOOLS= 	gobject-introspection vala

CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		archivers/libarchive \
			x11/gtk+3

.include <bsd.port.mk>
