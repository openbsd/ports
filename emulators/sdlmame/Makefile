# $OpenBSD: Makefile,v 1.39 2014/05/14 23:32:50 bcallah Exp $

# Other archs have not been tested
ONLY_FOR_ARCHS =	amd64 i386

MULTI_PACKAGES =	-main -tools

COMMENT-main =		emulates a massive variety of arcades machines
COMMENT-tools =		tools to manipulate MAME/MESS roms and disk images

V =			153
DISTNAME =		mame0${V}s
PKGNAME-main =		sdlmame-0.${V}
PKGNAME-tools =		sdlmame-tools-0.${V}

CATEGORIES =		emulators games

HOMEPAGE =		http://mamedev.org/

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# MAME Distribution License, see http://mamedev.org/license.html
# history.dat : Creative Commons Attribution 3.0
PERMIT_PACKAGE_CDROM =		may not sell
PERMIT_PACKAGE_FTP =		Yes

WANTLIB += SDL SDL_ttf X11 Xinerama c expat fontconfig m pthread
WANTLIB += stdc++ util z

MASTER_SITES =		http://mamedev.org/downloader.php?file=releases/ \
			http://whiper.com/mame/${V}/
MASTER_SITES0 =		http://mamedev.org/updates/
MASTER_SITES1 = 	http://www.arcade-history.com/dats/

EXTRACT_SUFX =		.zip
DIST_SUBDIR =		mame

# PATCHFILES doesn't work for .zip
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			history${V}.zip:1

MODULES =		devel/gettext \
			lang/python

RUN_DEPENDS-main =	fonts/liberation-fonts
LIB_DEPENDS =		devel/sdl-ttf

MAKE_FLAGS =		OPT_FLAGS='-DINI_PATH="\"${SYSCONFDIR}/mame;\""'
MAKE_ENV =		ARCH=$(ARCH) CC=$(CC) CFLAGS="$(CFLAGS)" \
			TARGETOS=openbsd \
			NO_USE_QTDEBUG=1 \
			NOWERROR=1
.if ${MACHINE_ARCH} == "amd64"
MAKE_ENV +=		PTR64=1
.endif
USE_GMAKE =		Yes

CONFIGURE_STYLE =	none

MAKE_FILE =		makefile

NO_TEST =		Yes

post-extract:
	@${UNZIP} -oq ${WRKDIR}/mame.zip -d ${WRKSRC}

pre-patch:
#.for v in 1
#	${PATCH} ${PATCH_DIST_ARGS} < ${WRKDIR}/0${V}u${v}.diff
#.endfor
	@perl -pi -e 's|\r\n|\n|g' ${WRKDIST}/makefile \
	    ${WRKDIST}/src/emu/fileio.h \
	    ${WRKDIST}/src/emu/machine/netlist.h \
	    ${WRKDIST}/src/osd/sdl/sdl.mak
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

pre-build:
	${SUBST_CMD} ${WRKDIST}/src/osd/sdl/sdl.mak

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mame ${PREFIX}/bin/sdlmame
.for f in chdman jedutil ldresample ldverify romcmp unidasm
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/sdlmame/keymaps
	${INSTALL_DATA} ${WRKSRC}/src/osd/sdl/keymaps/km[-_]??.txt \
	    ${PREFIX}/share/sdlmame/keymaps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlmame
.for f in config.txt hlsl.txt license.txt mame.txt newvideo.txt
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${PREFIX}/share/doc/sdlmame
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sdlmame
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/mame.ini \
	    ${PREFIX}/share/examples/sdlmame/mame.ini
	${INSTALL_DATA} ${WRKDIR}/history.dat ${PREFIX}/share/sdlmame

.include <bsd.port.mk>
