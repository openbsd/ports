# $OpenBSD: Makefile,v 1.13 2018/06/29 22:16:33 espie Exp $

USE_WXNEEDED=		Yes

COMMENT=		file archiver for the MATE desktop

CATEGORIES=		archivers

MATE_PROJECT=		engrampa

REVISION=		2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xtst c epoxy expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 iconv intl m pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z
WANTLIB += atk-1.0 atk-bridge-2.0 atspi cairo-gobject cairo
WANTLIB += caja-extension dbus-1 gdk-3 graphite2 gtk-3 harfbuzz
WANTLIB += json-glib-1.0 pango-1.0 pangocairo-1.0 pangoft2-1.0

MODULES=		devel/dconf \
			x11/gnome

RUN_DEPENDS=		archivers/gtar \
			archivers/unrar \
			archivers/unzip

LIB_DEPENDS=		devel/json-glib \
			x11/mate/caja

CONFIGURE_ARGS=		--disable-packagekit

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
