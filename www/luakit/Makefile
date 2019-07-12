# $OpenBSD: Makefile,v 1.24 2019/07/12 20:50:48 sthen Exp $

BROKEN-powerpc = help2man: can't get `--help' info from ./luakit

COMMENT =	fast, small, webkit based browser written in lua

# Date of the most recent upstream commit.
GH_ACCOUNT =	luakit
GH_TAGNAME =	2.1
GH_PROJECT =	luakit

EPOCH =		1

CATEGORIES =	www

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE =	http://luakit.org

# GPLv3
PERMIT_PACKAGE =	Yes

USE_GMAKE =		Yes

COMPILER =	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 intl
WANTLIB += javascriptcoregtk-4.0 luajit-5.1 pango-1.0 pangocairo-1.0
WANTLIB += soup-2.4 sqlite3 webkit2gtk-4.0

MODULES =	lang/lua

NO_TEST =	Yes

BUILD_DEPENDS =	devel/help2man \
		devel/luafs

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/luafs \
		textproc/lua-markdown

LIB_DEPENDS =	lang/luajit \
		www/webkitgtk4

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-libav

MAKE_FLAGS +=	LUA_BIN_NAME=${MODLUA_BIN} \
		XDGPREFIX=${PREFIX}/share/examples \
		DOCDIR=${PREFIX}/share/doc/luakit \
		MANPREFIX=${PREFIX}/man \
		PIXMAPDIR=${PREFIX}/share/pixmaps/ \
		APPDIR=${PREFIX}/share/applications/ \
		PREFIX=${PREFIX} \
		DEVELOPMENT_PATHS=0

.include <bsd.port.mk>
