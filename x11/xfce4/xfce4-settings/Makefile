COMMENT=	Xfce4 settings helpers

XFCE_PROJECT=	xfce4-settings
XFCE_VERSION=	4.16.2

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes
BUILD_DEPENDS=	www/p5-URI
# used by helper xfce-compose-mail
RUN_DEPENDS=	www/p5-URI
LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		devel/libnotify \
		x11/xfce4/garcon \
		x11/xfce4/exo>=0.11.0 \
		x11/gnome/libxklavier \
		x11/xfce4/xfconf

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo expat jpeg
WANTLIB += ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread startup-notification-1
WANTLIB += xcb xcb-util xcb-render xcb-shm
WANTLIB += xfce4util xfconf-0 xkbfile xklavier xml2 z garcon-1
WANTLIB += harfbuzz graphite2 lzma iconv intl fribidi
WANTLIB += atk-bridge-2.0 cairo-gobject epoxy exo-2 gdk-3
WANTLIB += gtk-3 xfce4kbd-private-3 xfce4ui-2
WANTLIB += ${COMPILER_LIBCXX}

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-settings \
		menudir=${PREFIX}/share/examples/xfce4-settings \
		defaultsdir=${PREFIX}/share/examples/xfce4-settings \
		settingsdir=${PREFIX}/share/examples/xfce4-settings
.include <bsd.port.mk>
