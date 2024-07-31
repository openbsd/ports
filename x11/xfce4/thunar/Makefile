COMMENT=	Xfce4 file manager

XFCE_PROJECT=	thunar
XFCE_VERSION=	4.18.11

SHARED_LIBS=	thunarx-3	0.1

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += dbus-1 epoll-shim epoxy execinfo exif exo-2 expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv intl jpeg m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png startup-notification-1
WANTLIB += wayland-client wayland-cursor wayland-egl xcb xcb-render
WANTLIB += xcb-shm xcb-util xfce4kbd-private-3 xfce4ui-2 xfce4util
WANTLIB += xfconf-0 xkbcommon z

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/thunarx-3 lib/xfce4/panel/plugins
MODXFCE_WANTLIB =	xfce4panel-2.0
NO_TEST=	Yes

CONFIGURE_ENV=	ac_cv_header_sys_ucred_h=yes \
		ac_cv_header_sys_mount_h=yes

FAKE_FLAGS=	defaultsdir=${PREFIX}/share/examples/Thunar

BUILD_DEPENDS =	textproc/gtk-doc

LIB_DEPENDS=	x11/xfce4/exo>=4.17.0 \
		x11/xfce4/libxfce4ui>=4.17.6 \
		x11/xfce4/xfce4-panel \
		devel/libnotify \
		devel/pcre2 \
		graphics/libexif

RUN_DEPENDS=	x11/gnome/gvfs

.include <bsd.port.mk>
