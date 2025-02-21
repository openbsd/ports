COMMENT =	GTK+3 widget to display large amounts of numerical data

DISTNAME =	gtkdatabox-1.0.0

SHARED_LIBS =	gtkdatabox 1.0

CATEGORIES =	x11

HOMEPAGE =	https://gtkdatabox.sourceforge.io/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi cairo cairo-gobject dbus-1 epoll-shim
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 harfbuzz iconv intl jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png wayland-client wayland-cursor
WANTLIB += wayland-egl xcb xcb-render xcb-shm xkbcommon z

SITES=		${SITE_SOURCEFORGE:=gtkdatabox/}

LIB_DEPENDS =	x11/gtk+3

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.69

.include <bsd.port.mk>
