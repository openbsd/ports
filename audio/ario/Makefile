COMMENT =	GTK3 MPD client inspired by Rhythmbox
DISTNAME =	ario-1.6
CATEGORIES =	audio x11
REVISION =	2

SHARED_LIBS +=	filesystem		1.0 # 0.0
SHARED_LIBS +=	information		1.0 # 0.0
SHARED_LIBS +=	mmkeys			0.0 # 0.0
SHARED_LIBS +=	radios			1.0 # 0.0

HOMEPAGE =	https://ario-player.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi avahi-client avahi-common avahi-glib
WANTLIB += c cairo cairo-gobject crypto curl dbus-1 dbus-glib-1
WANTLIB += epoxy execinfo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl jpeg
WANTLIB += lzma m mpdclient nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png ssl tag tag_c xcb xcb-render xcb-shm xml2 z

SITES =		${SITE_SOURCEFORGE:=ario-player/}

MODULES =	textproc/intltool

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS =	audio/libmpdclient \
		audio/taglib \
		devel/fribidi \
		net/avahi,-glib \
		net/curl \
		x11/dbus-glib \
		x11/gnome/at-spi2-core \
		x11/gtk+3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

.include <bsd.port.mk>
