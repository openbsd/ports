# $OpenBSD: Makefile,v 1.73 2019/06/13 15:48:54 sthen Exp $

COMMENT=		binary editor

GNOME_PROJECT=		ghex
GNOME_VERSION=		3.18.3
REVISION=		4

SHARED_LIBS +=  gtkhex-3                  0.0 # 0.0

CATEGORIES=		sysutils editors

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gailutil-3 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache yelp

CONFIGURE_STYLE=	gnu

# fix build with clang
CFLAGS +=		-Wno-error=format-nonliteral 

.include <bsd.port.mk>
