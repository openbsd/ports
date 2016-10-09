# $OpenBSD: Makefile,v 1.1.1.1 2016/10/09 15:05:54 ajacoutot Exp $

COMMENT=		GLib wrapper around libarchive

GNOME_PROJECT=		gnome-autoar
GNOME_VERSION=		0.1.1

SHARED_LIBS +=  gnome-autoar-0            0.0 # 0.0
SHARED_LIBS +=  gnome-autoar-gtk-0        0.0 # 0.0

CATEGORIES=		archivers

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 cairo cairo-gobject crypto dbus-1 epoxy expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv intl lz4 lzma lzo2 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

LIB_DEPENDS=		archivers/libarchive \
			x11/gtk+3

.include <bsd.port.mk>
