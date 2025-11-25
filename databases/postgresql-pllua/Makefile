COMMENT =		Lua procedural language support for PostgreSQL

VERSION =		2.0.12
GH_ACCOUNT =		pllua
GH_PROJECT =		pllua
GH_TAGNAME =		REL_${VERSION:S/./_/g}
PKGNAME =		postgresql-pllua-${VERSION}
REVISION =		1

SITES.p =       	https://github.com/pllua/pllua/commit/
PATCHFILES.p =          pllua-pg18-fix{bb2f44b542e650ddd250e4e27c73e86aadb09dde}.patch
PATCH_DIST_STRIP =      -p1

CATEGORIES =		databases

HOMEPAGE =		https://github.com/pllua/pllua

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c ${MODLUA_WANTLIB}

# -Wvla and other unrecognized command line options
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		lang/lua
MODLUA_VERSION =	5.3

BUILD_DEPENDS =		${RUN_DEPENDS} \
			postgresql-client->=18,<19:databases/postgresql,-main
RUN_DEPENDS =		postgresql-server->=18,<19:databases/postgresql,-server

USE_GMAKE =		Yes

SUBST_VARS =		MODLUA_INCL_DIR MODLUA_WANTLIB MODLUA_BIN LLD_EMUL

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
