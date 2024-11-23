COMMENT =	modern QuakeWorld client

CATEGORIES =	games

N =		ezquake
V =		3.6.5
PKGNAME =	${N}-${V}
DIST_TUPLE +=	github QW-Group ${N}-source ${V} . # GPLv2+
DIST_TUPLE +=	github QW-Group qwprot 53af547d0608a1507895fc1629cdc3f4820fc0af src/qwprot # GPLv2+

# GPLv2+
PERMIT_PACKAGE =	Yes

MAINTAINER =	Tom Murphy <openbsd@pertho.net>

HOMEPAGE =	https://ezquake.com/

WANTLIB += GL SDL2 c curl expat freetype jansson jpeg m minizip pcre2-8 png
WANTLIB += pthread sndfile speex speexdsp z

MODULES =	devel/cmake

LIB_DEPENDS =	archivers/minizip \
		audio/libsndfile \
		audio/speex \
		graphics/jpeg \
		graphics/png \
		devel/pcre2 \
		devel/sdl2 \
		devel/jansson \
		net/curl

NO_TEST =	Yes

GAMEDIR =	${PREFIX}/share/ezquake
SUBST_VARS +=	GAMEDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/EX_browser_sources.c

do-install:
	${INSTALL_PROGRAM}  ${WRKSRC}/ezquake ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${GAMEDIR}
	@cp ${WRKSRC}/misc/sb/*.txt ${GAMEDIR}/

.include <bsd.port.mk>
