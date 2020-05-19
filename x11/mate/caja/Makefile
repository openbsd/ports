# $OpenBSD: Makefile,v 1.18 2020/05/19 01:23:08 kmos Exp $

COMMENT=		file manager for the MATE desktop

SHARED_LIBS +=  caja-extension            5.0 # 5.0

MATE_PROJECT=		caja

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo
WANTLIB += cairo-gobject dconf epoxy exempi exif expat ffi fontconfig
WANTLIB += freetype fribidi gailutil-3 gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl lzma m mate-desktop-2 notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += startup-notification-1 xcb xcb-render xcb-shm xcb-util xml2 z

MODULES=		devel/dconf \
			x11/gnome

RUN_DEPENDS=		x11/gnome/gvfs

LIB_DEPENDS=		devel/libnotify \
			graphics/libexif \
			textproc/exempi \
			x11/mate/desktop

MODGNOME_TOOLS=		shared-mime-info gobject-introspection \
			gtk-update-icon-cache

CONFIGURE_STYLE=	gnu

CFLAGS +=		-std=gnu99

.include <bsd.port.mk>
