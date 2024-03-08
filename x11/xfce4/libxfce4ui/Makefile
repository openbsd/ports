COMMENT=	Xfce4 widget library

XFCE_PROJECT=	libxfce4ui
XFCE_VERSION=	4.18.6

SHARED_LIBS=	xfce4ui-2		0.3	\
		xfce4kbd-private-3	0.1	# 0.0

# LGPLv2
PERMIT_PACKAGE=	Yes


MODULES=	x11/xfce4

MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
BUILD_DEPENDS += devel/gobject-introspection lang/vala
CONFIGURE_ARGS +=	--disable-gudev

LIB_DEPENDS=	x11/xfce4/xfconf>=4.12.0 \
		x11/xfce4/libxfce4util>=4.13.0 \
		x11/gtk+3 \
		devel/libgtop2 \
		devel/glade \
		devel/startup-notification

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 gladeui-2
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv intl lzma m pango-1.0 atspi dbus-1
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png pthread
WANTLIB += startup-notification-1 xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4util xfconf-0 xml2 z Xau gtop-2.0 kvm execinfo jpeg
WANTLIB += Xdmcp ${COMPILER_LIBCXX}
WANTLIB += epoll-shim wayland-client wayland-cursor wayland-egl
WANTLIB += xkbcommon


FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfconf

post-install:
	sed -i 's/Control/Primary/' ${PREFIX}/share/examples/xfconf/xfce4-keyboard-shortcuts.xml

.include <bsd.port.mk>
