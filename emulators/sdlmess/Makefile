# $OpenBSD: Makefile,v 1.6 2009/08/10 06:31:09 kili Exp $

# Other archs have not been tested
ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		emulates game consoles and old home computers

V =			0.132
DISTNAME =		sdlmess${V:S/.//}
PKGNAME =		sdlmess-${V}p0

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
WANTLIB +=	pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb z

MASTER_SITES =		http://rbelmont.mameworld.info/
EXTRACT_SUFX =		.zip

MODULES =		gcc4
MODGCC4_ARCHES =	*
MODGCC4_LANGS =		c

LIB_DEPENDS =		SDL::devel/sdl gconf-2.>=5::devel/gconf2 \
			gdk-x11-2.0.>=0.11,gdk_pixbuf-2.0.>=0.11,gtk-x11-2.0.>=0.11::x11/gtk+2
RUN_DEPENDS =		:sdlmame-tools-${V}:emulators/sdlmame,-tools

USE_GMAKE =		Yes
USE_X11 =		Yes

NO_REGRESS =		Yes

MAKE_FLAGS =		OPT_FLAGS='-DINI_PATH="\"${SYSCONFDIR}/mess;\""'
MAKE_ENV =		ARCH=$(ARCH) CC=$(CC) CFLAGS="$(CFLAGS)" LD=$(CC) \
			TARGETOS=openbsd
.if ${MACHINE_ARCH} == "amd64"
MAKE_ENV+=		PTR64=1
.endif
MAKE_FILE =		makefile.sdl

MESS_EXTBIN=		dat2html imgtool
MESS_DOC=		config.txt credits.htm faq.htm imgtool.txt \
				license.txt mame.txt messnew.txt newvideo.txt
MESS_DATA_DIR =		roms hash samples artwork ctrlr cheat keymaps

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mess ${PREFIX}/bin/sdlmess
.for i in ${MESS_EXTBIN}
	${INSTALL_PROGRAM} ${WRKSRC}/${i} ${PREFIX}/bin/
.endfor
.for i in ${MESS_DATA_DIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/sdlmess/${i}
.endfor
	${INSTALL_DATA} ${WRKSRC}/keymaps/km[-_]??.txt \
		${PREFIX}/share/sdlmess/keymaps/
	${INSTALL_DATA} ${WRKSRC}/ui.bdf ${PREFIX}/share/sdlmess
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlmess
.for i in ${MESS_DOC}
	${INSTALL_DATA} ${WRKSRC}/docs/${i} ${PREFIX}/share/doc/sdlmess/
.endfor
	${INSTALL_DATA} $(WRKSRC)/SDLMESS.txt ${PREFIX}/share/doc/sdlmess/
	${INSTALL_DATA} $(WRKSRC)/sysinfo.dat ${PREFIX}/share/doc/sdlmess/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sdlmess
	${SUBST_CMD} -c ${FILESDIR}/mess.ini \
		${PREFIX}/share/examples/sdlmess/mess.ini
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/examples/sdlmess/mess.ini
 
.include <bsd.port.mk>
