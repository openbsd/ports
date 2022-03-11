COMMENT=	Xfce4 desktop panel

XFCE_PROJECT=	xfce4-panel
XFCE_VERSION=	4.16.3

SHARED_LIBS=	xfce4panel-2.0	0.2 # 4.0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject epoxy fribidi
WANTLIB += expat ffi fontconfig freetype garcon-1 garcon-gtk3-1 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread startup-notification-1 wnck-3 xcb
WANTLIB += xcb-render xcb-shm xcb-util xfce4ui-2 xfce4util xfconf-0 z
WANTLIB += iconv intl exo-2 jpeg
WANTLIB += dbusmenu-glib dbusmenu-gtk3
WANTLIB += ${COMPILER_LIBCXX}

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/panel/plugins
BUILD_DEPENDS += devel/gobject-introspection lang/vala

LIB_DEPENDS=	x11/xfce4/exo>=0.11.2 \
		x11/xfce4/libxfce4ui>=4.15.6 \
		x11/xfce4/libxfce4util>=4.15.6 \
		x11/xfce4/xfconf>=4.13.3 \
		x11/xfce4/garcon>=0.5.0 \
		x11/libdbusmenu \
		devel/libwnck3

FAKE_FLAGS=	confdir=${PREFIX}/share/examples/xfce4-panel

.include <bsd.port.mk>
