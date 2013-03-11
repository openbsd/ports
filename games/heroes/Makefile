# $OpenBSD: Makefile,v 1.25 2013/03/11 11:07:39 espie Exp $

COMMENT=	graphically improved game of yore

VERSION=	0.21
DATAVERSION=	1.5
SOUNDVERSION=	1.0
MUSICVERSION=	1.0
DISTNAME=	heroes-${VERSION}
REVISION =	2
CATEGORIES=	games x11

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		heroes-data-${DATAVERSION}${EXTRACT_SUFX} \
		heroes-sound-effects-${SOUNDVERSION}${EXTRACT_SUFX} \
		heroes-sound-tracks-${MUSICVERSION}${EXTRACT_SUFX}
DIST_SUBDIR=	heroes

HOMEPAGE=	http://heroes.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=heroes/}

USE_GMAKE=	Yes
USE_GROFF =	Yes

MODULES=	devel/gettext

FLAVORS=	sdl ggi
FLAVOR?=	sdl

.if empty(FLAVOR:Msdl) && empty(FLAVOR:Mggi)
ERRORS+=	"Fatal:	Must choose one flavor: sdl or ggi"
.endif

.if ${FLAVOR:Msdl} && ${FLAVOR:Mggi}
ERRORS+=	"Fatal: Choose only one flavor: sdl or ggi"
.endif

.if ${FLAVOR:Msdl}
LIB_DEPENDS +=	devel/sdl \
		devel/sdl-mixer
WANTLIB +=	SDL SDL_mixer

CONFIGURE_ARGS+= --with-sdl="${LOCALBASE}"
WANTLIB +=	X11 Xext pthread pthread-stubs usbhid xcb
.else
CONFIGURE_ARGS+= --without-sdl --without-sdl-mixer
WANTLIB +=	gii
.endif

.if ${FLAVOR:Mggi}
# Sound support is disabled with the ggi flavor since it is dependent
# on sdl-mixer.  No alternatives for now.
LIB_DEPENDS +=	graphics/ggi
WANTLIB +=	ggi>=2.0
CONFIGURE_ARGS += --with-ggi="${LOCALBASE}"
FULLPKGNAME =	heroes-${VERSION}
.else
CONFIGURE_ARGS += --without-ggi
.endif

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/tools
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -lintl -liconv" \
		ac_cv_header_io_h=no
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
