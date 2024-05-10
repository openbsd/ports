# Original from: Robert Ruehlmann

COMMENT=		rogue-like game with X11 support
COMMENT-no_x11=		rogue-like game

V =			4.2.5
DISTNAME =		Angband-${V}
PKGNAME =		${DISTNAME:L}
CATEGORIES=		games

HOMEPAGE=		http://rephial.org

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# Multi license, including GPLv2, angband license, CC, freeware...
# The angband license contains the line "other copyrights may also apply"
# See ${WRKSRC}/copying.txt for a list.
PERMIT_PACKAGE=	Yes

WANTLIB = c curses

SITES = https://github.com/angband/angband/releases/download/${V}/

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_ENV +=	"LDFLAGS=-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--with-setgid=games \
			--localstatedir=${LOCALSTATEDIR} \
			--bindir=${PREFIX}/bin

USE_GMAKE =		Yes

FLAVORS=		no_x11 sdl
FLAVOR?=

BUILD_DEPENDS =		textproc/py-docutils,python3

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
CONFIGURE_ARGS+=	--with-x
# We only install desktop files and icons for non-no_x11 FLAVORs.
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic
WANTLIB+=		ICE SM X11
.endif

.if ${FLAVOR:Msdl}	# funky graphical mode and sounds
# Sound is currently broken:
# https://github.com/angband/angband/issues/5952
#
# It may not be hard to fix. I haven't tried.
CONFIGURE_ARGS +=	--enable-sdl2 \
			--disable-sdl2-mixer \
			--with-sdl2-prefix=/usr/local
PKG_ARGS +=		-Dsdl=1
LIB_DEPENDS +=		devel/sdl2-image \
			devel/sdl2-ttf
WANTLIB +=		SDL2 SDL2_image SDL2_ttf
.else
PKG_ARGS +=		-Dsdl=0
.endif

NO_TEST =		Yes

# Kill `make -s`.
pre-build:
	sed -i 's/$${MAKE} -s/$${MAKE}/g' ${WRKBUILD}/mk/buildsys.mk

post-install:
	# By default installs at most one desktop file (depending on configured
	# GUI libs) and installs it as `angband.desktop`. Installs neither a
	# desktop file, nor even the `applications` dir for no_x11 FLAVOR.
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	rm -f ${PREFIX}/share/applications/angband.desktop
	${INSTALL_DATA} ${WRKSRC}/lib/icons/angband-{sdl2,x11}.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/
	mv ${WRKINST}/etc/angband ${PREFIX}/share/examples/
	chmod -R u+rwX ${WRKINST}/${LOCALSTATEDIR}/games/angband/

.include <bsd.port.mk>
