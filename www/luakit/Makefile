COMMENT =	fast, small, webkit based browser written in lua

GH_ACCOUNT =	luakit
GH_PROJECT =	luakit
# used in MAKE_FLAGS
GH_TAGNAME =	2.3
REVISION =	2

EPOCH =		1

CATEGORIES =	www

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

HOMEPAGE =	https://luakit.github.io

# GPLv3
PERMIT_PACKAGE =	Yes

USE_GMAKE =		Yes

COMPILER =	base-clang ports-gcc

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += intl javascriptcoregtk-4.0 luajit-5.1 pango-1.0
WANTLIB += pangocairo-1.0 pthread soup-2.4 sqlite3 webkit2gtk-4.0

MODULES =	lang/lua

BUILD_DEPENDS =	devel/help2man \
		devel/luafs

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/luafs \
		net/luasocket \
		textproc/lua-markdown

LIB_DEPENDS =	lang/luajit \
		www/webkitgtk4

TEST_DEPENDS =	devel/luassert \
		devel/luacheck

TEST_TARGET =	run-tests

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
		DEVELOPMENT_PATHS=0 \
		VERSION=${GH_TAGNAME}

.include <bsd.port.mk>
