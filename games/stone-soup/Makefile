# $OpenBSD: Makefile,v 1.20 2013/06/04 18:41:44 naddy Exp $

COMMENT = 	dungeon crawl stone soup
CATEGORIES = 	games

HOMEPAGE = 	http://crawl.develz.org/
MASTER_SITES = 	${MASTER_SITE_SOURCEFORGE:=crawl-ref/}
VERSION = 	0.11.0
DISTNAME=	stone_soup-${VERSION}-nodeps
EXTRACT_SUFX=	.tar.xz
PKGNAME=	stone-soup-${VERSION}

BROKEN-arm=	tilegen.elf loops burning cpu

WRKDIST = 	${WRKDIR}/stone_soup-${VERSION}
WRKSRC = 	${WRKDIST}/source
USE_GMAKE = 	Yes
CFLAGS +=	"-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL"
CXXFLAGS += 	"-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL"
MAKE_FLAGS = 	CC="${CC}" CXX="${CXX}" \
		LUA_INCLUDE_DIR=${MODLUA_INCL_DIR} \
		LUA_LIB=${MODLUA_LIB} \
		SQLITE_INCLUDE_DIR=/usr/include \
		LDFLAGS=-L${LOCALBASE}/lib \
		INSTALL_UGRP=root:wheel \
		prefix=${PREFIX} \
		SAVEDIR="~/.crawl" \
		V=1

MAKE_ENV +=	MODLUA_DEP_VERSION=${MODLUA_DEP_VERSION}
MODULES = 	lang/lua
WANTLIB = 	c m stdc++ ${MODLUA_WANTLIB} sqlite3

BUILD_DEPENDS = devel/bison \
		graphics/pngcrush

# Almost nethack...
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_PACKAGE_CDROM = 	No gain

FLAVORS = 	no_x11
FLAVOR ?=

.if ${FLAVOR:Mno_x11}
WANTLIB +=	ncursesw pthread z
MAKE_FLAGS += 	USE_UNICODE=y UNICODE_LOCALE=y
.else
# This should be automatically set during "gmake -C rltiles..." but isn't...
CFLAGS +=	-DUSE_TILE
CXXFLAGS +=	-DUSE_TILE

MAKE_FLAGS += 	TILES=y \
		YACC=yacc \
		LDFLAGS="-L${LOCALBASE}/lib -lSDL -lSDL_image -lpng -pthread"
WANTLIB += 	GL GLU SDL SDL_image freetype png pthread z
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS += 	devel/sdl \
		devel/sdl-image \
		graphics/png
.endif

post-install:
	mv ${PREFIX}/bin/crawl ${PREFIX}/bin/crawl-ss
	chmod 755 ${PREFIX}/bin/crawl-ss
	${INSTALL_MAN} ${WRKDIST}/docs/crawl.6 ${PREFIX}/man/man6/crawl-ss.6
	${INSTALL_DATA} ${WRKDIST}/README.txt ${PREFIX}/share/crawl/docs
.if ! ${FLAVOR:Mno_x11}
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps ${PREFIX}/share/applications
	${INSTALL_DATA} \
		${PREFIX}/share/crawl/dat/tiles/stone_soup_icon-32x32.png \
		${PREFIX}/share/pixmaps/stone-soup.png
	${INSTALL_DATA} ${FILESDIR}/stone-soup.desktop \
		${PREFIX}/share/applications
.endif

NO_TEST=Yes

.include <bsd.port.mk>
