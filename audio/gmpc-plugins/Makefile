# $OpenBSD: Makefile,v 1.44 2019/07/12 20:43:33 sthen Exp $

COMMENT =		bundle of plugins for gmpc

VERSION =		11.8.16
DISTNAME =		gmpc-plugins-${VERSION}
REVISION =		11

CATEGORIES =		audio

MAINTAINER =		Landry Breuil <landry@openbsd.org>

HOMEPAGE =		http://gmpclient.org/plugins
MASTER_SITES =		http://www.musicpd.org/download/gmpc-plugins/${VERSION}/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 avahi-client avahi-common avahi-glib
WANTLIB += cairo dbus-1 dbus-glib-1 expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += iconv intl lzma m mpd pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread sqlite3 ${COMPILER_LIBCXX}
WANTLIB += tag tag_c xcb xcb-render xcb-shm xml2 z fribidi

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		textproc/intltool

LIB_DEPENDS =		audio/taglib \
			x11/dbus-glib

RUN_DEPENDS =		audio/gmpc>=${VERSION} \
			audio/vorbis-tools

BUILD_DEPENDS =		audio/gmpc>=${VERSION} \
			audio/vorbis-tools \
			x11/gob2

USE_GMAKE =		Yes

LIBTOOL_FLAGS =		--tag=disable-static

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS=		--disable-mserver \
			--disable-mmkeys \
			--disable-lirc \
			--disable-wikipedia

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv"

post-install:
	rm ${PREFIX}/lib/gmpc/plugins/*.la

.include <bsd.port.mk>
