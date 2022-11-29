N =		ezquake
V =		3.6.1
COMMENT =	modern QuakeWorld client

PKGNAME =	${N}-${V}
GH_ACCOUNT =	QW-Group
GH_PROJECT =	${N}-source
GH_TAGNAME =	${V}

CATEGORIES =	games

HOMEPAGE =	https://ezquake.github.io/
MAINTAINER =	Tom Murphy <openbsd@pertho.net>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += GL SDL2 c curl expat freetype jansson jpeg m pcre png pthread
WANTLIB += sndfile speex speexdsp z

LIB_DEPENDS =	audio/libsndfile \
		audio/speex \
		graphics/jpeg \
		graphics/png \
		devel/sdl2 \
		devel/jansson \
		devel/pcre \
		net/curl

USE_GMAKE =	Yes
MAKE_ENV =	V=1

NO_TEST =	Yes

GAMEDIR =	${PREFIX}/share/ezquake
SUBST_VARS +=	GAMEDIR
PATCHORIG =	.orig.port

do-configure:
	${SUBST_CMD} ${WRKSRC}/EX_browser_sources.c

do-install:
	${INSTALL_PROGRAM}  ${WRKSRC}/ezquake ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${GAMEDIR}
	@cp ${WRKSRC}/misc/sb/*.txt ${GAMEDIR}/

.include <bsd.port.mk>
