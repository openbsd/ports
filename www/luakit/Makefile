COMMENT =	fast, small, webkit based browser written in lua

V =		2.3.3
DISTNAME =	luakit-${V}
REVISION =	3

EPOCH =		1

CATEGORIES =	www

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

HOMEPAGE =	https://luakit.github.io

SITES =		https://github.com/luakit/luakit/releases/download/${V}/

# GPLv3
PERMIT_PACKAGE =	Yes

USE_GMAKE =		Yes

COMPILER =	base-clang ports-gcc

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += intl javascriptcoregtk-4.0 pango-1.0 pangocairo-1.0 pthread
WANTLIB += soup-2.4 sqlite3 webkit2gtk-4.0

# luajit archs
.if ${MACHINE_ARCH} == "arm" \
 || ${MACHINE_ARCH} == "amd64" \
 || ${MACHINE_ARCH} == "i386" \
 || ${MACHINE_ARCH} == "powerpc"
WANTLIB +=	luajit-5.1
LIB_DEPENDS +=	lang/luajit
MAKE_FLAGS +=	USE_LUAJIT=1
USE_NOBTCFI =	Yes
.else
WANTLIB +=	${MODLUA_WANTLIB}
MAKE_FLAGS +=	USE_LUAJIT=0
.endif

MODULES =	lang/lua

MODLUA_VERSION =	5.1

BUILD_DEPENDS =	devel/help2man \
		devel/luafs

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/luafs \
		net/luasocket \
		textproc/lua-markdown

LIB_DEPENDS +=	www/webkitgtk4

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
		VERSION=${V}

.include <bsd.port.mk>
