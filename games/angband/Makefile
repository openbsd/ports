# $OpenBSD: Makefile,v 1.28 2013/08/20 22:05:52 zhuk Exp $
# Original from: Robert Ruehlmann

COMMENT=		rogue-like game with X11 support
COMMENT-no_x11=		rogue-like game

V =			3.3.2
V_DLDIR =		${V:C/\.[0-9]$//}
DISTNAME=		angband-v${V}
PKGNAME=		angband-${V}
CATEGORIES=     	games
REVISION=		0

HOMEPAGE=		http://rephial.org

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# Multi license, including GPLv2, angband license, CC, freeware...
# The angband license contains the line "other copyrights may also apply"
PERMIT_PACKAGE_CDROM=	unclear license
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		c m ncurses

MASTER_SITES =		${HOMEPAGE}/downloads/${V_DLDIR}/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	"LDFLAGS=-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--with-setgid=games \
			--with-varpath=/var/games/angband \
			--with-configpath=${PREFIX}/share/angband \
			--bindir=${PREFIX}/bin

CONFIGURE_ENV=          TRUEPREFIX="${TRUEPREFIX}"
USE_GMAKE =		Yes

FLAVORS=		no_x11 sdl
FLAVOR?=

RUN_DEPENDS =		devel/desktop-file-utils

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
CONFIGURE_ARGS+=	--with-x
WANTLIB+=		ICE SM X11
.endif

.if ${FLAVOR:Msdl}	# funky graphical mode and sounds
CONFIGURE_ARGS +=	--enable-sdl \
			--enable-sdl-mixer
PKG_ARGS +=		-Dsdl=1
LIB_DEPENDS +=		devel/sdl-mixer \
			devel/sdl-image \
			devel/sdl-ttf
WANTLIB +=		SDL SDL_image SDL_mixer SDL_ttf pthread	
.else
CONFIGURE_ARGS +=	--disable-sdl-mixer	# defaults to ON
PKG_ARGS +=		-Dsdl=0
.endif

NO_TEST =		Yes

pre-configure:
	@perl -pi -e "s,/usr/share,${TRUEPREFIX}/share," \
		${WRKSRC}/lib/xtra/icon/angband*.desktop

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	mv ${PREFIX}/share/angband/xtra/icon/*.desktop \
		${PREFIX}/share/applications

.include <bsd.port.mk>
