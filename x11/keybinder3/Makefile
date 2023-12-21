COMMENT =	GTK+3 library for registering keyboard shortcuts
DISTNAME =	keybinder3-0.3.0
CATEGORIES =	x11 devel
REVISION =	9

SHARED_LIBS =	keybinder-3.0		0.0	# 0.0

HOMEPAGE =	https://github.com/engla/keybinder

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi cairo cairo-gobject dbus-1 epoll-shim
WANTLIB += epoxy execinfo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gtk-3 harfbuzz iconv intl jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png wayland-client
WANTLIB += wayland-cursor wayland-egl xcb xcb-render xcb-shm xkbcommon
WANTLIB += z

SITES =		http://mirrors.nycbug.org/pub/distfiles/

MODULES =	x11/gnome

MODGNOME_TOOLS =	gobject-introspection

LIB_DEPENDS =	x11/gtk+3

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-static

USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

post-install:
	rm ${PREFIX}/lib/libkeybinder-3.0.la

.include <bsd.port.mk>
