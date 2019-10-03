# $OpenBSD: Makefile,v 1.18 2019/10/03 14:36:12 robert Exp $

USE_WXNEEDED=		Yes

COMMENT=		image viewer for the MATE desktop

CATEGORIES=		graphics

MATE_PROJECT=		eom
MATE_VERSION=		1.22.2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender c dconf epoxy expat
WANTLIB += ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 iconv intl jpeg
WANTLIB += lzma m pcre pixman-1 png pthread xcb
WANTLIB += xcb-render xcb-shm xcb-util xml2 z
WANTLIB += atk-1.0 atk-bridge-2.0 cairo-gobject cairo
WANTLIB += croco-0.6 exempi exif gdk-3
WANTLIB += girepository-1.0 graphite2 gtk-3 harfbuzz lcms2
WANTLIB += mate-desktop-2 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += peas-1.0 peas-gtk-1.0 rsvg-2 startup-notification-1
WANTLIB += fribidi

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/libpeas \
			graphics/lcms2 \
			graphics/libexif \
			textproc/exempi \
			x11/mate/desktop

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
