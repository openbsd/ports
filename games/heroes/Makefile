# $OpenBSD: Makefile,v 1.9 2002/12/29 15:10:08 fgsch Exp $

COMMENT=	"graphically improved game of yore"

VERSION=	0.12
DATAVERSION=	1.3
SOUNDVERSION=	1.0
MUSICVERSION=	1.0
DISTNAME=	heroes-${VERSION}
CATEGORIES=	games x11

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		heroes-data-${DATAVERSION}${EXTRACT_SUFX} \
		heroes-sound-effects-${SOUNDVERSION}${EXTRACT_SUFX} \
		heroes-sound-tracks-${MUSICVERSION}${EXTRACT_SUFX}
DIST_SUBDIR=	heroes

HOMEPAGE=	http://heroes.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=heroes/}

USE_X11=	Yes
USE_GMAKE=	Yes

MODULES=	gettext

FLAVORS=	sdl ggi
FLAVOR?=	sdl

.if empty(FLAVOR:L:Msdl) && empty(FLAVOR:L:Mggi)
ERRORS+=	"Fatal:	Must choose one flavor: sdl or ggi"
.endif

.if ${FLAVOR:L:Msdl} && ${FLAVOR:L:Mggi}
ERRORS+=	"Fatal: Choose only one flavor: sdl or ggi"
.endif

.if ${FLAVOR:L:Msdl}
LIB_DEPENDS+=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer

CONFIGURE_ARGS+= --with-sdl="${LOCALBASE}"
.else
CONFIGURE_ARGS+= --without-sdl --without-sdl-mixer
.endif

.if ${FLAVOR:L:Mggi}
# Sound support is disabled with the ggi flavor since it is dependent
# on sdl-mixer.  No alternatives for now.
LIB_DEPENDS+=	ggi.2.0:ggi-*:graphics/ggi
CONFIGURE_ARGS+= --with-ggi="${LOCALBASE}"
CONFIGURE_ENV+=	LIBS="-pthread"
.else
CONFIGURE_ARGS+= --without-ggi
.endif

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/tools
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+= --disable-optimizations \
		 --disable-debug \
		 --without-mikmod

post-install:
.for dir in levels pics tilesets
	${INSTALL_DATA_DIR} ${PREFIX}/share/heroes/${dir}
	${INSTALL_DATA} ${WRKDIR}/heroes-data-${DATAVERSION}/${dir}/* ${PREFIX}/share/heroes/${dir}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/heroes/sfx
	${INSTALL_DATA} ${WRKDIR}/heroes-sound-effects-${SOUNDVERSION}/{*.wav,sfx.conf} ${PREFIX}/share/heroes/sfx
	${INSTALL_DATA_DIR} ${PREFIX}/share/heroes/mod
	${INSTALL_DATA} ${WRKDIR}/heroes-sound-tracks-${MUSICVERSION}/{*.xm,sound.conf} ${PREFIX}/share/heroes/mod

.include <bsd.port.mk>
