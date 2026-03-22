BROKEN-hppa =	ICE on dgn-shoals.cc:638

COMMENT =	dungeon crawl stone soup

VERSION =	0.34.0
DISTNAME =	stone_soup-${VERSION}-nodeps
PKGNAME =	stone-soup-${VERSION}

CATEGORIES =	games

HOMEPAGE =	https://crawl.develz.org/

MAINTAINER =	Stefan Moran <ssm@howdoesmycode.work>

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/crawl/crawl/releases/download/${VERSION}/
EXTRACT_SUFX =	.tar.xz

MODULES =	lang/lua lang/python

MODLUA_SA =		Yes
MODLUA_VERSION =	5.4

MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	checkconventionalcommit.py configure-msvc.py \
			configure.py coverage form-gen.py gen-all.py \
			genutil.py job-gen.py mon-gen.py species-gen.py \
			status-icon-sizes-gen.py tag-35-upgrade.py
MODPY_ADJ_FILES := ${MODPY_ADJ_FILES:S/^/util\//}

WANTLIB =	${COMPILER_LIBCXX} ${MODLUA_WANTLIB} c m sqlite3 z

BUILD_DEPENDS =	graphics/pngcrush \
		textproc/py-yaml
LIB_DEPENDS =	databases/sqlite3

USE_GMAKE =	Yes
MAKE_FLAGS =	FORCE_CC=${CC} FORCE_CXX=${CXX} LUA_PACKAGE=${MODLUA_FLAVOR} \
		NO_TRY_GOLD=1 NO_TRY_LLD=1 V=1 prefix=${PREFIX}

FLAVORS =	no_x11
FLAVOR ?=

.if ${FLAVOR:Mno_x11}
WANTLIB +=	curses
.else
WANTLIB +=	GL SDL2 SDL2_image SDL2_mixer freetype
LIB_DEPENDS +=	devel/sdl2 devel/sdl2-image devel/sdl2-mixer
RUN_DEPENDS +=	devel/desktop-file-utils
MAKE_FLAGS +=   SOUND=1 TILES=1
.endif

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/${DISTNAME:-nodeps=}
WRKSRC =	${WRKDIST}/source

COMPILER =	base-clang ports-gcc

post-install:
	mv ${PREFIX}/bin/crawl ${PREFIX}/bin/crawl-ss # Collision with net/crawl
	chmod ${BINMODE} ${PREFIX}/bin/crawl-ss
	${INSTALL_MAN} ${WRKDIST}/docs/crawl.6 ${PREFIX}/man/man6/crawl-ss.6
.if ${FLAVOR:Nno_x11}
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/pixmaps \
		${PREFIX}/share/applications
	${INSTALL_DATA} \
		${FILESDIR}/stone-soup.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA} \
		${PREFIX}/share/crawl/dat/tiles/stone_soup_icon-32x32.png \
		${PREFIX}/share/pixmaps/stone-soup.png
.endif

.include <bsd.port.mk>
