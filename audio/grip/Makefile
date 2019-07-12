# $OpenBSD: Makefile,v 1.67 2019/07/12 20:43:33 sthen Exp $

COMMENT=		front-end to external cd audio rippers and mp3 encoders

DISTNAME=		grip-3.8.1
CATEGORIES=		audio
REVISION=		2

HOMEPAGE=		http://sourceforge.net/projects/grip/

# GPLv2 - LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE ORBit-2 ORBitCosNaming-2 SM
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 c cairo canberra cdda_interface cdda_paranoia
WANTLIB += crypto curl curses dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype fribidi gailutil gconf-2 gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0
WANTLIB += gpg-error graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += iconv id3 intl ltdl lzma m nghttp2 ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt ssl util vorbis
WANTLIB += vorbisfile vte xcb xcb-render xcb-shm xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=grip/}

MODULES=		x11/gnome

MODGNOME_TOOLS=		yelp desktop-file-utils

LIB_DEPENDS=		audio/cdparanoia \
			audio/id3lib \
			devel/vte \
			net/curl \
			x11/gnome/libgnomeui

RUN_DEPENDS=		audio/vorbis-tools

BUILD_DEPENDS=		devel/gettext,-tools

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-werror

.include <bsd.port.mk>
