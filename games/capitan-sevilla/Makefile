# $OpenBSD: Makefile,v 1.13 2019/07/12 20:46:15 sthen Exp $

COMMENT =		platform game set in Seville and in space
VERSION = 		1.0.3
DISTNAME =		capitan-sevilla-${VERSION}
CATEGORIES =		games
HOMEPAGE =		http://computeremuzone.com/ficha.php?id=754&l=en

REVISION =		4

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB = 	alleg c freetype m ogg png pthread ${COMPILER_LIBCXX} vorbis vorbisfile z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://computeremuzone.com/pc/juegos/
EXTRACT_SUFX = 		.tar.bz2
# XXX upstream distfile has no version number
DISTFILES = 		Capitan${EXTRACT_SUFX}

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		games/allegro \
			graphics/png \
			audio/libvorbis

LDFLAGS =		-L${LOCALBASE}/lib -L${X11BASE}/lib \
			-lvorbis -lvorbisfile -logg -lfreetype \
			-Llib -lalogg `allegro-config --libs` -lalfont \
			-lpng -lz
MAKE_ENV =		CC="${CC}" CXX="${CXX}" CXXFLAGS='${CXXFLAGS}'
MAKE_FLAGS =		LDFLAGS="$(LDFLAGS)" DESTDIR="$(DESTDIR)"

USE_GMAKE =		Yes
NO_TEST =		Yes

CXXFLAGS =		-O2 -pipe -pthread \
			-I${X11BASE}/include \
			-I${X11BASE}/include/freetype2 \
			-I./include \
			-I./src/include \
			-I./dependencies/alogg/include \
			-I./dependencies/alfont/include \
			`allegro-config --cflags` \
			-DCAPITAN_DATA_DIR="\"${LOCALBASE}/share/capitan-sevilla/\""
CFLAGS =		${CXXFLAGS} -fgnu89-inline

WRKDIST =		${WRKDIR}/capitan-${VERSION}

ALL_TARGET =		deps all
	
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/capitan ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/capitan-sevilla/data
.for _f in bitmaps0.dat bitmaps1.dat capitan.at1 capitan.at2 fonts.dat \
	loading.dat map.dat music.dat screens.dat sfx.dat sprites.dat
	${INSTALL_DATA} ${WRKSRC}/data/${_f} \
		${PREFIX}/share/capitan-sevilla/data
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/capitan-sevilla/lang
	${INSTALL_DATA} ${WRKSRC}/lang/lang0.txt \
		${PREFIX}/share/capitan-sevilla/lang
	${INSTALL_DATA} ${WRKSRC}/lang/lang1.txt \
		${PREFIX}/share/capitan-sevilla/lang
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/capitan-sevilla
	${INSTALL_DATA} ${WRKSRC}/extra/instructions.pdf \
		${PREFIX}/share/doc/capitan-sevilla
	${INSTALL_DATA} ${WRKSRC}/extra/instructions.pdf \
		${PREFIX}/share/doc/capitan-sevilla
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/extra/capitan.png ${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/extra/capitan.desktop \
		${PREFIX}/share/applications

.include <bsd.port.mk>
