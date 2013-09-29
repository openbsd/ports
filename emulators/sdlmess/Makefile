# $OpenBSD: Makefile,v 1.31 2013/09/29 19:37:17 bcallah Exp $

# Other archs have not been tested
ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		emulates game consoles and old home computers

V =			150
DISTNAME =		mame0${V}s
PKGNAME =		sdlmess-0.${V}

CATEGORIES =		emulators games

HOMEPAGE =		http://messdev.org/

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# MAME Distribution License, see http://mamedev.org/license.html
# history.dat : Creative Commons Attribution 3.0
PERMIT_PACKAGE_CDROM =		may not sell
PERMIT_PACKAGE_FTP =		Yes

WANTLIB =	SDL SDL_ttf X11 Xcomposite Xcursor Xdamage Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pthread stdc++ util z

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
LIB_DEPENDS =		devel/gconf2 \
			devel/sdl-ttf \
			x11/gtk+2

MAKE_FLAGS =		OPT_FLAGS='-DINI_PATH="\"${SYSCONFDIR}/mess;\""'
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
VMEM_WARNING =		Yes

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
	${INSTALL_PROGRAM} ${WRKSRC}/mess ${PREFIX}/bin/sdlmess
.for f in castool floptool imgtool
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/sdlmess/keymaps
	${INSTALL_DATA} ${WRKSRC}/src/osd/sdl/keymaps/km[-_]??.txt \
	    ${PREFIX}/share/sdlmess/keymaps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlmess
.for f in config.txt hlsl.txt license.txt newvideo.txt
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${PREFIX}/share/doc/sdlmess
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sdlmess
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/mess.ini \
	    ${PREFIX}/share/examples/sdlmess/mess.ini
	${INSTALL_DATA} ${WRKDIR}/history.dat ${PREFIX}/share/sdlmess

.include <bsd.port.mk>
