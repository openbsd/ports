# $OpenBSD: Makefile,v 1.53 2017/07/26 22:45:20 sthen Exp $

# Other archs have not been tested
ONLY_FOR_ARCHS =	amd64

USE_WXNEEDED=		Yes

# i386: src/emu/cpu/i386/pentops.inc: error: integer constant is too large for 'long' type

MULTI_PACKAGES =	-main -tools

COMMENT-main =		emulates a massive variety of arcades machines
COMMENT-tools =		tools to manipulate MAME/MESS roms and disk images

V =			160
DISTNAME =		mame0${V}s
PKGNAME-main =		sdlmame-0.${V}
PKGNAME-tools =		sdlmame-tools-0.${V}
REVISION =		4

CATEGORIES =		emulators games

HOMEPAGE =		http://mamedev.org/

# MAME Distribution License, see http://mamedev.org/legal.html
# history.dat : Creative Commons Attribution 3.0
PERMIT_PACKAGE_CDROM =	unclear license
PERMIT_PACKAGE_FTP =	unclear license
PERMIT_DISTFILES_FTP =	unclear license

WANTLIB += SDL SDL_ttf X11 Xinerama c expat fontconfig freetype
WANTLIB += m pthread ${COMPILER_LIBCXX} util z

MASTER_SITES =		https://github.com/mamedev/mame/releases/download/mame0${V}/
MASTER_SITES1 =		https://spacehopper.org/mirrors/

EXTRACT_SUFX =		.zip
DIST_SUBDIR =		mame

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			history${V}.zip:1

MODULES =		devel/gettext \
			lang/python

RUN_DEPENDS-main =	fonts/liberation-fonts
LIB_DEPENDS =		devel/sdl-ttf

MAKE_FLAGS =		OPT_FLAGS='-DINI_PATH="\"${SYSCONFDIR}/mame;\""'
MAKE_ENV =		ARCH=$(ARCH) CC=$(CC) CFLAGS="$(CFLAGS)" LD="${CXX}" \
			TARGETOS=openbsd \
			NO_USE_QTDEBUG=1 \
			NOWERROR=1 \
			SDL_LIBVER=sdl
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
	@sed -i 's|\r\n|\n|g' ${WRKDIST}/makefile \
	    ${WRKDIST}/src/emu/fileio.h \
	    ${WRKDIST}/src/emu/cpu/m68000/m68kmake.c \
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
	${SUBST_DATA} ${FILESDIR}/mame.ini \
	    ${PREFIX}/share/examples/sdlmame/mame.ini
	${INSTALL_DATA} ${WRKDIR}/history.dat ${PREFIX}/share/sdlmame

.include <bsd.port.mk>
