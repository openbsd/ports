# $OpenBSD: Makefile,v 1.38 2019/07/12 21:42:15 sthen Exp $

BROKEN-hppa =	ICE on dgn-shoals.cc:638

COMMENT = 	dungeon crawl stone soup

VERSION = 	0.23.2
DISTNAME=	stone_soup-${VERSION}-nodeps
PKGNAME=	stone-soup-${VERSION}
REVISION=	1

CATEGORIES = 	games

HOMEPAGE = 	https://crawl.develz.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} c m sqlite3

MASTER_SITES = 	https://crawl.develz.org/release/${VERSION:R}/
EXTRACT_SUFX=	.tar.xz

COMPILER =	base-clang ports-gcc
MODULES = 	lang/python \
		lang/lua
MODLUA_VERSION = 	5.1

BUILD_DEPENDS = graphics/pngcrush \
		textproc/py-yaml${MODPY_FLAVOR}
LIB_DEPENDS = 	databases/sqlite3

MAKE_FLAGS = 	CC="${CC}" GCC="${GCC}" GXX="${CXX}" \
		CXX="${CXX}" HOSTCXX="${CXX}" \
		LUA_INCLUDE_DIR=${MODLUA_INCL_DIR} \
		LUA_LIB=${MODLUA_LIB} \
		SQLITE_INCLUDE_DIR=${LOCALBASE}/include \
		LDFLAGS=-L${LOCALBASE}/lib \
		INSTALL_UGRP=root:wheel \
		prefix=${PREFIX} \
		SAVEDIR="~/.crawl" \
		NO_YACC=1 V=1

USE_GMAKE = 	Yes
CONFIGURE_STYLE = none

MODPY_RUN_DEPENDS = 	No
MODPY_ADJ_FILES = util/species-gen.py

FLAVORS = 	no_x11
FLAVOR ?=

.if ${FLAVOR:Mno_x11}
WANTLIB += 	curses pthread z
MAKE_FLAGS += 	USE_UNICODE=y UNICODE_LOCALE=y
.else
# This should be automatically set during "gmake -C rltiles..." but isn't...
CFLAGS +=	-DUSE_TILE
CXXFLAGS +=	-DUSE_TILE

MAKE_FLAGS += 	TILES=y \
		LDFLAGS="-L${LOCALBASE}/lib -lSDL2 -lSDL2_image -lpng -pthread"
WANTLIB += 	GL GLU SDL2 SDL2_image freetype png pthread z
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS += 	devel/sdl2 \
		devel/sdl2-image \
		databases/sqlite3 \
		graphics/png
.endif

NO_TEST =	Yes

CFLAGS += 	-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL2
CXXFLAGS += 	-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL2

WRKDIST = 	${WRKDIR}/stone_soup-${VERSION}
WRKSRC = 	${WRKDIST}/source

post-install:
	mv ${PREFIX}/bin/crawl ${PREFIX}/bin/crawl-ss
	chmod 755 ${PREFIX}/bin/crawl-ss
	${INSTALL_MAN} ${WRKDIST}/docs/crawl.6 ${PREFIX}/man/man6/crawl-ss.6
.if ! ${FLAVOR:Mno_x11}
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps ${PREFIX}/share/applications
	${INSTALL_DATA} \
		${PREFIX}/share/crawl/dat/tiles/stone_soup_icon-32x32.png \
		${PREFIX}/share/pixmaps/stone-soup.png
	${INSTALL_DATA} ${WRKDIST}/source/debian/crawl-tiles.desktop \
		${PREFIX}/share/applications
.endif

.include <bsd.port.mk>
