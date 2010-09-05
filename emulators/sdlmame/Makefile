# $OpenBSD: Makefile,v 1.10 2010/09/05 15:18:49 landry Exp $

# Other archs have not been tested
ONLY_FOR_ARCHS =	amd64 i386

MULTI_PACKAGES =	-main -tools

COMMENT-main =		emulates a massive variety of arcades machines
COMMENT-tools =		tools to manipulate MAME/MESS roms and disk images

V =			0.132
DISTNAME =		sdlmame${V:S/.//}
PKGNAME-main =		sdlmame-${V}
REVISION-main =		4
PKGNAME-tools =		sdlmame-tools-${V}
REVISION-tools =	2

CATEGORIES =		emulators games

HOMEPAGE =		http://rbelmont.mameworld.info/?page_id=163

MAINTAINER =		Pierre Riteau <pierre.riteau@gmail.com>

# MAME Distribution License, see http://mamedev.org/license.html
# history.dat : Creative Commons Attribution 3.0
PERMIT_PACKAGE_CDROM =		may not sell
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	may not sell
PERMIT_DISTFILES_FTP =		Yes

WANTLIB +=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB +=	Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB +=	expat fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB +=	gobject-2.0 gthread-2.0 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB +=	pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb z
WANTLIB +=	SDL gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

MASTER_SITES =		http://rbelmont.mameworld.info/
EXTRACT_SUFX =		.zip

MASTER_SITES0 = 	http://www.arcade-history.com/dats/
DISTFILES+=		${DISTNAME}${EXTRACT_SUFX} \
			mamehistory137.zip:0

BUILD_DEPENDS = 	::archivers/unzip
LIB_DEPENDS =		::devel/sdl \
			::devel/gconf2
RUN_DEPENDS-main =	:${PKGNAME-tools}:emulators/sdlmame,-tools

USE_GMAKE =		Yes
USE_X11 =		Yes

NO_REGRESS =		Yes
VMEM_WARNING =		Yes

MAKE_FLAGS =		OPT_FLAGS='-DINI_PATH="\"${SYSCONFDIR}/mame;\""'
MAKE_ENV =		ARCH=$(ARCH) CC=$(CC) CFLAGS="$(CFLAGS)" LD=$(CC) \
			TARGETOS=openbsd
.if ${MACHINE_ARCH} == "amd64"
MAKE_ENV+=		PTR64=1
# XXX -Wno-system-headers is needed because of inclusion of *mmintrin.h from gcc
# those headers don't compile with -Wsystem-headers -Werror on amd64
MAKE_FLAGS =		OPT_FLAGS='-DINI_PATH="\"${SYSCONFDIR}/mame;\"" -Wno-system-headers'
.endif
MAKE_FILE =		makefile

MAME_EXTBIN =		chdman jedutil ldresample ldverify romcmp
MAME_DOC =		config.txt license.txt mame.txt newvideo.txt
MAME_DATA_DIR =		roms samples artwork ctrlr cheat keymaps

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mame ${PREFIX}/bin/sdlmame
.for i in ${MAME_EXTBIN}
	${INSTALL_PROGRAM} ${WRKSRC}/${i} ${PREFIX}/bin/${i}
.endfor
.for i in ${MAME_DATA_DIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/sdlmame/${i}
.endfor
	${INSTALL_DATA} ${WRKSRC}/keymaps/km[-_]??.txt \
		${PREFIX}/share/sdlmame/keymaps/
	${INSTALL_DATA} ${WRKSRC}/ui.bdf ${PREFIX}/share/sdlmame
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlmame
.for i in ${MAME_DOC}
	${INSTALL_DATA} ${WRKSRC}/docs/${i} ${PREFIX}/share/doc/sdlmame/
.endfor
	${INSTALL_DATA} $(WRKSRC)/SDLMAME.txt ${PREFIX}/share/doc/sdlmame/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sdlmame
	${SUBST_CMD} -c ${FILESDIR}/mame.ini \
		${PREFIX}/share/examples/sdlmame/mame.ini
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/examples/sdlmame/mame.ini
	${INSTALL_DATA} ${WRKDIR}/history.dat ${PREFIX}/share/sdlmame

.include <bsd.port.mk>
