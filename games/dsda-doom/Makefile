COMMENT =		fork of prboom+ with a focus on speedrunning

DIST_TUPLE =		github kraflab dsda-doom v0.28.2 .

CATEGORIES =		games x11
MAINTAINER =		Lucas de Sena <lucas@seninha.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX}
WANTLIB +=		GL GLU SDL2 SDL2_mixer SDL2_image c fluidsynth m
WANTLIB +=		mad portmidi pthread ogg vorbis vorbisfile z zip

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		archivers/libzip \
			audio/fluidsynth \
			audio/libmad \
			audio/libvorbis \
			audio/portmidi \
			devel/sdl2-mixer \
			devel/sdl2-image

CONFIGURE_ARGS =	-DWITH_DUMB=OFF

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib
CFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include

DEBUG_PACKAGES =	${BUILD_PACKAGES}

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/prboom2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dsda-doom
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dsda-doom/docs
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dsda-doom/docs/guides
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dsda-doom/patch_notes
	${INSTALL_DATA} ${WRKDIST}/README.md ${PREFIX}/share/doc/dsda-doom
	${INSTALL_DATA} ${WRKDIST}/docs/*.md ${PREFIX}/share/doc/dsda-doom/docs
	${INSTALL_DATA} ${WRKDIST}/docs/guides/*.md \
		${PREFIX}/share/doc/dsda-doom/docs/guides
	${INSTALL_DATA} ${WRKDIST}/patch_notes/*.md \
		${PREFIX}/share/doc/dsda-doom/patch_notes

.include <bsd.port.mk>
