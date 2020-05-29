# $OpenBSD: Makefile,v 1.6 2020/05/29 21:17:20 bcallah Exp $

V =		0.12.0
COMMENT =	simple to use paint program
DISTNAME =	dibuja-${V}
CATEGORIES =	graphics x11

HOMEPAGE =	https://launchpad.net/dibuja
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 babl-0.1
WANTLIB += c cairo exiv2 expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gegl-0.4 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gtk-x11-2.0 harfbuzz
WANTLIB += iconv intl json-glib-1.0 lcms2 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES =	https://launchpad.net/dibuja/trunk/${V}/+download/

COMPILER =	base-clang ports-gcc

MODULES =	textproc/intltool

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	graphics/exiv2 \
		graphics/gegl04 \
		x11/gtk+2

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--libdir="${LOCALBASE}/lib"

USE_GMAKE =	Yes

.include <bsd.port.mk>
