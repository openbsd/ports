COMMENT =	simple and fast image viewer for X11

GH_ACCOUNT =	lxde
GH_PROJECT =	gpicview
GH_TAGNAME =	0.3.1

CATEGORIES =	graphics x11

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 epoll-shim
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 harfbuzz iconv intl jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png wayland-client wayland-cursor
WANTLIB += wayland-egl xcb xcb-render xcb-shm xkbcommon z

MODULES =	textproc/intltool

LIB_DEPENDS =	graphics/jpeg \
		x11/gtk+3
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

USE_GMAKE =	yes

CONFIGURE_STYLE = autoreconf
AUTOCONF_VERSION =	2.72
AUTOMAKE_VERSION =	1.17
CONFIGURE_ARGS =	--enable-gtk3
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		lt_cv_path_SED=/usr/bin/sed

.include <bsd.port.mk>
