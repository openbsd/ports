# $OpenBSD: Makefile,v 1.46 2013/03/11 11:46:10 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		binary editor

GNOME_PROJECT=		ghex
GNOME_VERSION=		3.6.1

SHARED_LIBS +=  gtkhex-3                  0.0 # 0.0

CATEGORIES=		sysutils editors

HOMEPAGE=		https://live.gnome.org/Ghex

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat fontconfig freetype gailutil-3
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z ffi stdc++
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata
WANTLIB += icule icuuc

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

.include <bsd.port.mk>
