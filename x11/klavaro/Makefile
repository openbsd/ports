COMMENT =	touch typing tutor program

DISTNAME =	klavaro-3.14
REVISION =	1

CATEGORIES =	x11

HOMEPAGE =	https://klavaro.sourceforge.net/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

USE_BZIP2 = 	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject crypto curl
WANTLIB += dbus-1 epoll-shim epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gtk-3 gtkdatabox harfbuzz iconv
WANTLIB += intl jpeg m nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_libressl
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png ssl wayland-client wayland-cursor wayland-egl xcb
WANTLIB += xcb-render xcb-shm xkbcommon z

SITES =		${SITE_SOURCEFORGE:=klavaro/}

EXTRACT_SUFX = 	.tar.bz2

MODULES =	textproc/intltool
USE_GMAKE =	Yes
BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS = 	devel/gettext,-runtime \
		x11/gtk+3 \
		x11/gtkdatabox>=1.0.0 \
		net/curl
RUN_DEPENDS =	x11/gtk+4,-guic

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
