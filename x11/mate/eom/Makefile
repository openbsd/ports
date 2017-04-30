# $OpenBSD: Makefile,v 1.1.1.1 2017/04/30 19:01:28 robert Exp $

COMMENT=	image viewer for the MATE desktop

CATEGORIES=	graphics

MATE_PROJECT=	eom
MATE_VERSION=	1.18.1

USE_WXNEEDED=	Yes

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/dconf \
		x11/gnome

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender c dconf epoxy expat
WANTLIB += ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 iconv intl jpeg
WANTLIB += lzma m pcre pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xcb-util xml2 z
WANTLIB += atk-1.0 atk-bridge-2.0 atspi cairo-gobject cairo
WANTLIB += croco-0.6 dbus-1 dbus-glib-1 exempi exif gdk-3
WANTLIB += girepository-1.0 graphite2 gtk-3 harfbuzz lcms2
WANTLIB += mate-desktop-2 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += peas-1.0 peas-gtk-1.0 rsvg-2 startup-notification-1

LIB_DEPENDS=	devel/libpeas \
		graphics/lcms2 \
		graphics/libexif \
		textproc/exempi \
		x11/dbus-glib \
		x11/mate/desktop

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache

.include <bsd.port.mk>
