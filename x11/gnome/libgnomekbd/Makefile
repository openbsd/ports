# $OpenBSD: Makefile,v 1.47 2013/03/11 11:46:11 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	keyboard configuration library

GNOME_PROJECT=	libgnomekbd
GNOME_VERSION=	3.6.0

SHARED_LIBS +=  gnomekbd             8.0      # 8.0
SHARED_LIBS +=  gnomekbdui           8.0      # 8.0

CATEGORIES=		devel

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += xkbfile xklavier xml2 z ffi stdc++
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata
WANTLIB += icule icuuc

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_TOOLS= goi

LIB_DEPENDS=	x11/gnome/libxklavier \
		x11/gtk+3

MODGNOME_DESKTOP_FILE=	Yes

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
