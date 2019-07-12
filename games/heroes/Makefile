# $OpenBSD: Makefile,v 1.33 2019/07/12 21:02:20 sthen Exp $

COMMENT=	graphically improved game of yore

VERSION=	0.21
DATAVERSION=	1.5
SOUNDVERSION=	1.0
MUSICVERSION=	1.0
DISTNAME=	heroes-${VERSION}
REVISION =	8
CATEGORIES=	games x11

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		heroes-data-${DATAVERSION}${EXTRACT_SUFX} \
		heroes-sound-effects-${SOUNDVERSION}${EXTRACT_SUFX} \
		heroes-sound-tracks-${MUSICVERSION}${EXTRACT_SUFX}
DIST_SUBDIR=	heroes

HOMEPAGE=	http://heroes.sourceforge.net/

MAINTAINER=	Anthony J. Bentley <anthony@anjbe.name>

PERMIT_PACKAGE=	Yes

WANTLIB=  SDL SDL_mixer c iconv intl m pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=heroes/}

USE_GMAKE=	Yes

LIB_DEPENDS=	devel/gettext,-runtime \
		devel/sdl \
		devel/sdl-mixer

CONFIGURE_ARGS= --disable-debug \
		--disable-optimizations \
		--with-sdl="${LOCALBASE}" \
		--without-ggi \
		--without-mikmod

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/tools
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -lintl -liconv" \
		ac_cv_header_io_h=no

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
