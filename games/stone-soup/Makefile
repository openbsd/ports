# $OpenBSD: Makefile,v 1.17 2012/09/19 08:15:09 jasper Exp $

COMMENT = 	dungeon crawl stone soup
CATEGORIES = 	games

HOMEPAGE = 	http://crawl.develz.org/
MASTER_SITES = 	${MASTER_SITE_SOURCEFORGE:=crawl-ref/}
VERSION = 	0.9.1
DISTNAME=	stone_soup-${VERSION}-nodeps
EXTRACT_SUFX=	.tar.bz2
PKGNAME=	stone-soup-${VERSION}
REVISION =	3

BROKEN-arm=	tilegen.elf loops burning cpu

WRKDIST = 	${WRKDIR}/stone_soup-${VERSION}
WRKSRC = 	${WRKDIST}/source
MAKE_FILE = 	${WRKSRC}/makefile
USE_GMAKE = 	Yes
MAKE_FLAGS = 	CC="${CC}" CXX="${CXX}" \
		CFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng -I${LOCALBASE}/include/SDL" \
		CXXFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng -I${LOCALBASE}/include/SDL" \
		LUA_INCLUDE_DIR=${MODLUA_INCL_DIR} \
		LUA_LIB=${MODLUA_LIB} \
		SQLITE_INCLUDE_DIR=/usr/include \
		LDFLAGS=-L${LOCALBASE}/lib \
		INSTALL_UGRP=root:wheel \
		prefix=${PREFIX} \
		SAVEDIR="~/.crawl" \
		V=1

MODULES = 	lang/lua
WANTLIB = 	c m stdc++ ${MODLUA_WANTLIB} sqlite3

BUILD_DEPENDS = devel/bison \
		graphics/pngcrush
RUN_DEPENDS =	devel/desktop-file-utils

# Almost nethack...
PERMIT_DISTFILES_FTP = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM = No gain
PERMIT_PACKAGE_CDROM = 	No gain

FLAVORS = 	no_x11
FLAVOR ?=

.if ${FLAVOR:Mno_x11}
WANTLIB +=	ncursesw
MAKE_FLAGS += 	USE_UNICODE=y UNICODE_LOCALE=y
.else
MAKE_FLAGS += 	TILES=y \
		YACC=yacc \
		LDFLAGS="-L${LOCALBASE}/lib -lSDL -lSDL_image -lpng -pthread"
WANTLIB += 	GL GLU SDL SDL_image freetype png pthread z
LIB_DEPENDS += 	devel/sdl \
		devel/sdl-image \
		print/freetype \
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

NO_REGRESS=Yes

.include <bsd.port.mk>
