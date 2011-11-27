# $OpenBSD: Makefile,v 1.18 2011/11/27 12:42:28 fgsch Exp $

# Other archs have not been tested
ONLY_FOR_ARCHS =	amd64 i386

MULTI_PACKAGES =	-main -tools

COMMENT-main =		emulates a massive variety of arcades machines
COMMENT-tools =		tools to manipulate MAME/MESS roms and disk images

V =			0144
DISTNAME =		mame${V}s
PKGNAME-main =		sdlmame-${V:S/0/0./}
PKGNAME-tools =		sdlmame-tools-${V:S/0/0./}

CATEGORIES =		emulators games

HOMEPAGE =		http://mamedev.org/

# MAME Distribution License, see http://mamedev.org/license.html
# history.dat : Creative Commons Attribution 3.0
PERMIT_PACKAGE_CDROM =		may not sell
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	may not sell
PERMIT_DISTFILES_FTP =		Yes

MODULES =	devel/gettext

WANTLIB =	GL SDL SDL_ttf X11 Xcomposite Xcursor Xdamage Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread pthread-stubs stdc++ util xcb \
		xcb-render xcb-shm z

MASTER_SITES =		http://mamedev.org/downloader.php?file=releases/
MASTER_SITES0 =		http://mamedev.org/updates/
MASTER_SITES1 = 	http://www.arcade-history.com/dats/

EXTRACT_SUFX =		.zip
DIST_SUBDIR =		mame

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			mamehistory${V:S/0//}.zip:1

BUILD_DEPENDS = 	archivers/unzip
LIB_DEPENDS =		devel/gconf2 \
			devel/sdl-ttf \
			x11/gtk+2
RUN_DEPENDS-main =	fonts/liberation-fonts

MAKE_FLAGS =		OPT_FLAGS='-DINI_PATH="\"${SYSCONFDIR}/mame;\""'
MAKE_ENV =		ARCH=$(ARCH) CC=$(CC) CFLAGS="$(CFLAGS)" \
			TARGETOS=openbsd
.if ${MACHINE_ARCH} == "amd64"
MAKE_ENV +=		PTR64=1
.endif
USE_GMAKE =		Yes

MAKE_FILE =		makefile

NO_REGRESS =		Yes
VMEM_WARNING =		Yes

post-extract:
	@${UNZIP} -oq ${WRKDIR}/mame.zip -d ${WRKSRC}

pre-patch:
	@perl -pi -e 's|\r\n|\n|g' ${WRKDIST}/makefile \
	    ${WRKDIST}/src/emu/fileio.h \
	    ${WRKDIST}/src/osd/sdl/sdlos_unix.c \
	    ${WRKDIST}/src/mame/video/mcd212.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mame ${PREFIX}/bin/sdlmame
.for f in chdman jedutil ldresample ldverify romcmp
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
	${SUBST_CMD} -c ${FILESDIR}/mame.ini \
	    ${PREFIX}/share/examples/sdlmame/mame.ini
	chown ${SHAREOWN}:${SHAREGRP} \
	    ${PREFIX}/share/examples/sdlmame/mame.ini
	${INSTALL_DATA} ${WRKDIR}/history.dat ${PREFIX}/share/sdlmame

.include <bsd.port.mk>
