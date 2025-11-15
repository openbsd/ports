COMMENT=	Xfce4 widget library

XFCE_PROJECT=	libxfce4ui
XFCE_VERSION=	4.20.2
REVISION=	0

SHARED_LIBS=	xfce4ui-2		0.4	\
		xfce4kbd-private-3	0.1	# 0.0

# LGPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
BUILD_DEPENDS += devel/gobject-introspection lang/vala
CONFIGURE_ARGS +=	--disable-gudev \
			--disable-gladeui2

LIB_DEPENDS=	x11/xfce4/xfconf>=4.12.0 \
		x11/xfce4/libxfce4util>=4.13.0 \
		x11/gtk+3 \
		devel/libgtop2 \
		devel/startup-notification

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += dbus-1 epoll-shim epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 gtop-2.0 harfbuzz
WANTLIB += iconv intl jpeg kvm m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-8 pixman-1 png startup-notification-1 wayland-client
WANTLIB += wayland-cursor wayland-egl xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4util xfconf-0 xkbcommon z

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfconf

post-install:
	sed -i 's/Control/Primary/' ${PREFIX}/share/examples/xfconf/xfce4-keyboard-shortcuts.xml

.include <bsd.port.mk>
