COMMENT =	Xfce4 freedesktop.org compliant menu implementation

XFCE_PROJECT =	garcon
XFCE_VERSION =	4.16.1

SHARED_LIBS +=	garcon-1	0.0
SHARED_LIBS +=	garcon-gtk3-1	0.1 # 0.0

HOMEPAGE=	http://www.xfce.org/

# LGPLv2
PERMIT_PACKAGE=	Yes

MODULES =	x11/xfce4
MODXFCE_ICON_CACHE=	Yes
LIB_DEPENDS =	x11/xfce4/libxfce4util>=4.15.6 \
		x11/xfce4/libxfce4ui>=4.15.7
BUILD_DEPENDS += devel/gobject-introspection

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 X11-xcb Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 cairo cairo-gobject epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png startup-notification-1
WANTLIB += xcb xcb-render xcb-shm xcb-util xfce4ui-2 xfce4util
WANTLIB += z

FAKE_FLAGS =	menudir=${PREFIX}/share/examples/garcon

.include <bsd.port.mk>
