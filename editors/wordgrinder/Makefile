COMMENT =	simple, Unicode-aware word processor on the console

GH_ACCOUNT =	davidgiven
GH_PROJECT =	wordgrinder
GH_TAGNAME =	0.8

CATEGORIES =	editors

HOMEPAGE =	https://cowlark.com/wordgrinder/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODLUA_WANTLIB}
WANTLIB += X11 Xft c curses freetype m z

MODULES =		lang/lua
MODLUA_VERSION =	5.3
BUILD_DEPENDS =		devel/ninja
RUN_DEPENDS =		devel/desktop-file-utils

MAKE_FLAGS =		CC="${CC}" \
			CURSES_PACKAGE="--cflags={-I/usr/include} \
				--libs={-L/usr/lib -lncurses}" \
			LUA_PACKAGE=${MODLUA_DEP} \
			XFT_PACKAGE=xft \
			DESTDIR="${DESTDIR}" \
			MANDIR="${PREFIX}/man" \
			PREFIX="${PREFIX}" \
			OBJDIR="${WRKBUILD}/wg-build"

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
