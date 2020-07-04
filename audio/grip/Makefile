# $OpenBSD: Makefile,v 1.68 2020/07/04 09:28:02 ajacoutot Exp $

COMMENT=		front-end to external cd audio rippers and mp3 encoders

DISTNAME=		grip-4.1.1
CATEGORIES=		audio

HOMEPAGE=		http://sourceforge.net/projects/grip/

# GPLv2 - LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo cdda_interface
WANTLIB += cdda_paranoia crypto curl expat ffi fontconfig freetype
WANTLIB += fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gtk-x11-2.0 harfbuzz
WANTLIB += iconv id3 intl m nghttp2 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png ssl xcb xcb-render xcb-shm z

COMPILER=		base-clang ports-gcc base-gcc

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=grip/}

MODULES=		x11/gnome

MODGNOME_TOOLS=		yelp desktop-file-utils

LIB_DEPENDS=		audio/cdparanoia \
			audio/id3lib \
			net/curl \
			x11/gtk+2

RUN_DEPENDS=		audio/vorbis-tools

BUILD_DEPENDS=		devel/gettext,-tools

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-werror

.include <bsd.port.mk>
