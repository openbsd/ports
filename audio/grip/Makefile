COMMENT=		front-end to external cd audio rippers and mp3 encoders

DISTNAME=		grip-4.2.4
REVISION=		1

CATEGORIES=		audio

HOMEPAGE=		http://sourceforge.net/projects/grip/

# GPLv2 - LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += c cairo cdda_interface cdda_paranoia crypto curl expat
WANTLIB += ffi fontconfig freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-x11-2.0 harfbuzz iconv id3 intl jpeg m nghttp2
WANTLIB += nghttp3 ngtcp2 ngtcp2_crypto_quictls pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png ssl xcb xcb-render
WANTLIB += xcb-shm z

COMPILER=		base-clang ports-gcc base-gcc

SITES=			${SITE_SOURCEFORGE:=grip/}

MODULES=		x11/gnome

MODGNOME_TOOLS=		yelp desktop-file-utils

LIB_DEPENDS=		audio/cdparanoia \
			audio/id3lib \
			net/curl \
			x11/gtk+2

RUN_DEPENDS=		audio/vorbis-tools \
			x11/gtk+4,-guic

BUILD_DEPENDS=		devel/gettext,-tools

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-werror

.include <bsd.port.mk>
