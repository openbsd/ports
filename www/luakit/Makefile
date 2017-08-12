# $OpenBSD: Makefile,v 1.20 2017/08/12 19:28:43 abieber Exp $

BROKEN-powerpc = help2man: can't get `--help' info from ./luakit

COMMENT =	fast, small, webkit based browser written in lua

# Date of the most recent upstream commit.
GH_ACCOUNT =	luakit
GH_TAGNAME =	2017.08.10
GH_PROJECT =	luakit

EPOCH =		0

CATEGORIES =	www

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE =	http://luakit.org

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		Yes

COMPILER =	gcc

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 intl
WANTLIB += javascriptcoregtk-4.0 luajit-5.1 pango-1.0 pangocairo-1.0
WANTLIB += pthread soup-2.4 sqlite3 webkit2gtk-4.0

MODULES =	lang/lua

BUILD_DEPENDS =	devel/help2man

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/luafs \
		textproc/lua-markdown

LIB_DEPENDS =	lang/luajit \
		www/webkitgtk4

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-libav

MAKE_FLAGS +=	LUA_BIN_NAME=${MODLUA_BIN} \
		MANPREFIX=${DESTDIR}/${PREFIX}/man \
		PIXMAPDIR=${DESTDIR}/${PREFIX}/share/pixmaps/ \
		APPDIR=${DESTDIR}/${PREFIX}/share/applications/ \
		PREFIX=${PREFIX} \
		XDGPREFIX=${DESTDIR}/${PREFIX}/share/examples/ \
		DEVELOPMENT_PATHS=0

.include <bsd.port.mk>
