# $OpenBSD: Makefile,v 1.26 2016/10/01 12:58:18 stsp Exp $

BROKEN-hppa =	ICE on dgn-shoals.cc:638
BROKEN-arm=	tilegen.elf loops burning cpu

COMMENT = 	dungeon crawl stone soup
CATEGORIES = 	games

HOMEPAGE = 	http://crawl.develz.org/
MASTER_SITES = 	https://crawl.develz.org/release/
VERSION = 	0.18.1
DISTNAME=	stone_soup-${VERSION}-nodeps
EXTRACT_SUFX=	.tar.xz
PKGNAME=	stone-soup-${VERSION}

WRKDIST = 	${WRKDIR}/stone_soup-${VERSION}
WRKSRC = 	${WRKDIST}/source
USE_GMAKE = 	Yes
CFLAGS += 	"-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL2"
CXXFLAGS += 	"-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL2"
MAKE_FLAGS = 	CC="${CC}" CXX="${CXX}" HOSTCXX="${CXX}" \
		LUA_INCLUDE_DIR=${MODLUA_INCL_DIR} \
		LUA_LIB=${MODLUA_LIB} \
		SQLITE_INCLUDE_DIR=${LOCALBASE}/include \
		LDFLAGS=-L${LOCALBASE}/lib \
		INSTALL_UGRP=root:wheel \
		prefix=${PREFIX} \
		SAVEDIR="~/.crawl" \
		NO_YACC=1

MAKE_ENV +=	MODLUA_DEP_VERSION=${MODLUA_DEP_VERSION}
MODGCC4_ARCHS = *
MODGCC4_LANGS = c++
MODULES = 	gcc4 lang/lua
MODLUA_VERSION = 	5.1
WANTLIB = 	c m ${MODLUA_WANTLIB} sqlite3

BUILD_DEPENDS = graphics/pngcrush
LIB_DEPENDS = 	databases/sqlite3

# License GPLv2+
PERMIT_PACKAGE_CDROM =	 Yes

FLAVORS = 	no_x11
FLAVOR ?=

.if ${FLAVOR:Mno_x11}
WANTLIB += 	ncursesw pthread z
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

NO_TEST=Yes

.include <bsd.port.mk>
