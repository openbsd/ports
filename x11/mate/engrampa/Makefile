# $OpenBSD: Makefile,v 1.1.1.1 2017/04/30 19:01:28 robert Exp $

COMMENT=	file archiver for the MATE desktop

CATEGORIES=	archivers

MATE_PROJECT=	engrampa
MATE_VERSION=	1.18.1

USE_WXNEEDED=	Yes

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender c epoxy expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 iconv intl m pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z
WANTLIB += atk-1.0 atk-bridge-2.0 atspi cairo-gobject cairo
WANTLIB += caja-extension dbus-1 gdk-3 graphite2 gtk-3 harfbuzz
WANTLIB += json-glib-1.0 pango-1.0 pangocairo-1.0 pangoft2-1.0

MODULES=	devel/dconf \
		x11/gnome

RUN_DEPENDS=	archivers/gtar \
		archivers/unzip

LIB_DEPENDS=	devel/json-glib \
		x11/mate/caja

CONFIGURE_ARGS=	--disable-packagekit

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache

.include <bsd.port.mk>
