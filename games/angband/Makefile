# $OpenBSD: Makefile,v 1.34 2019/07/14 00:39:36 naddy Exp $
# Original from: Robert Ruehlmann

COMMENT=		rogue-like game with X11 support
COMMENT-no_x11=		rogue-like game

V =			4.1.3
V_DLDIR =		${V:C/\.[0-9]$//}
DISTNAME=		angband-${V}
CATEGORIES=     	games

HOMEPAGE=		http://rephial.org

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# Multi license, including GPLv2, angband license, CC, freeware...
# The angband license contains the line "other copyrights may also apply"
# See ${WRKSRC}/copying.txt for a list.
PERMIT_PACKAGE=	Yes

WANTLIB=		c m curses

MASTER_SITES =		${HOMEPAGE}/downloads/${V_DLDIR}/

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_ENV +=	"LDFLAGS=-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--with-setgid=games \
			--with-varpath=/var/games/angband \
			--bindir=${PREFIX}/bin

USE_GMAKE =		Yes

FLAVORS=		no_x11 sdl
FLAVOR?=

RUN_DEPENDS =		devel/desktop-file-utils
BUILD_DEPENDS =		textproc/py-docutils

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
CONFIGURE_ARGS+=	--with-x
WANTLIB+=		ICE SM X11
.endif

.if ${FLAVOR:Msdl}	# funky graphical mode and sounds
# Sound is currently broken:
# http://trac.rephial.org/ticket/1977
CONFIGURE_ARGS +=	--enable-sdl \
			--disable-sdl-mixer \
			--with-sdl-prefix=/usr/local
PKG_ARGS +=		-Dsdl=1
LIB_DEPENDS +=		devel/sdl-image \
			devel/sdl-ttf
WANTLIB +=		SDL SDL_image SDL_ttf pthread
.else
CONFIGURE_ARGS +=	--disable-sdl-mixer	# defaults to ON
PKG_ARGS +=		-Dsdl=0
.endif

NO_TEST =		Yes

pre-configure:
	@perl -pi -e "s,/usr/share,${TRUEPREFIX}/share," \
		${WRKSRC}/lib/icons/angband-*.desktop

# Looks like upstream forgot to include a version file.
# `cat: ../version: No such file or directory`
pre-build:
	echo ${V} > ${WRKSRC}/version

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	mv ${PREFIX}/share/angband/icons/*.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/
	mv ${WRKINST}/etc/angband ${PREFIX}/share/examples/
	chmod -R u+rwX ${WRKINST}/var

.include <bsd.port.mk>
