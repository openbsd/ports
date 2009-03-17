# $OpenBSD: Makefile,v 1.1.1.1 2009/03/17 19:55:09 landry Exp $

# Other archs have not been tested
ONLY_FOR_ARCHS =	amd64 i386

MULTI_PACKAGES =	-main -tools

COMMENT-main =		emulates a massive variety of arcades machines
COMMENT-tools =		tools to manipulate MAME/MESS roms and disk images

V =			130
DISTNAME =		sdlmame0${V}
PKGNAME-main =		sdlmame-0.${V}
PKGNAME-tools =		sdlmame-tools-0.${V}

CATEGORIES =		emulators games

HOMEPAGE =		http://rbelmont.mameworld.info/?page_id=163

MAINTAINER =		Pierre Riteau <pierre.riteau@gmail.com>

# MAME Distribution License, see http://mamedev.org/license.html
PERMIT_PACKAGE_CDROM =		may not sell
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	may not sell
PERMIT_DISTFILES_FTP =		Yes

WANTLIB +=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB +=	Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB +=	expat fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB +=	gobject-2.0 gthread-2.0 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB +=	pangoft2-1.0 pixman-1 png pthread z

MASTER_SITES =		http://rbelmont.mameworld.info/
EXTRACT_SUFX =		.zip

MODULES =		gcc4
MODGCC4_ARCHES =	*
MODGCC4_LANG =		c

LIB_DEPENDS =		SDL::devel/sdl gconf-2.>=5::devel/gconf2 \
			gdk-x11-2.0.>=0.11,gdk_pixbuf-2.0.>=0.11,gtk-x11-2.0.>=0.11::x11/gtk+2
RUN_DEPENDS-main =	:sdlmame-tools-0.${V}:emulators/sdlmame,-tools

USE_GMAKE =		Yes
USE_X11 =		Yes

NO_REGRESS =		Yes
VMEM_WARNING =		Yes

MAKE_ENV =		ARCH=$(ARCH) CC=$(CC) CFLAGS="$(CFLAGS)" LD=$(CC) \
			TARGETOS=openbsd
.if ${MACHINE_ARCH} == "amd64"
MAKE_ENV+=		PTR64=1
.endif
MAKE_FILE =		makefile

MAME_EXTBIN =		chdman jedutil ldresample ldverify romcmp
MAME_DOC =		config.txt license.txt mame.txt newvideo.txt

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mame ${PREFIX}/bin/sdlmame
.for i in ${MAME_EXTBIN}
	${INSTALL_PROGRAM} ${WRKSRC}/${i} ${PREFIX}/bin/${i}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/sdlmame/keymaps
	${INSTALL_DATA} ${WRKSRC}/keymaps/km[-_]??.txt \
		${PREFIX}/share/sdlmame/keymaps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlmame
.for i in ${MAME_DOC}
	${INSTALL_DATA} ${WRKSRC}/docs/${i} ${PREFIX}/share/doc/sdlmame/
.endfor
	${INSTALL_DATA} $(WRKSRC)/SDLMAME.txt ${PREFIX}/share/doc/sdlmame/

.include <bsd.port.mk>
