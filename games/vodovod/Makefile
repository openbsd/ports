# $OpenBSD: Makefile,v 1.3 2007/12/29 11:03:17 simon Exp $

COMMENT=	combine pipes to lead water from the house to the tank

DISTNAME=	vodovod-1.10-src
PKGNAME=	vodovod-1.10p1
CATEGORIES=	games

HOMEPAGE=	http://home.gna.org/vodovod/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	SDL c m pthread stdc++

MASTER_SITES=	http://download.gna.org/vodovod/

LIB_DEPENDS=	SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer

USE_X11=	Yes

MAKE_ENV+=	CC="${CXX}" CCFLAGS="${CXXFLAGS}" \
		DATADIR="${PREFIX}/share/vodovod" \
		HIGHSCOREDIR="/var/games"

HIGHSCORE=	TOMAS 15 PAULO 14 LOUISE 13 JULIAN 12 GEORGE 11 \
		ENZO 10 JOLAN 9 JAAP 8 MARTIN 7 RICHARD 6 \
		CLAUS 5 THORSTEN 4 ELLE 3 SABRINA 2 JOSHUA 1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vodovod ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/vodovod
.for N M in ${HIGHSCORE}
	@echo "$N#$$((660*$M))#$M#" >> ${PREFIX}/share/vodovod/vodovod.sco 
.endfor
	${INSTALL_DATA} ${WRKSRC}/vodovod.rc \
		${PREFIX}/share/vodovod/vodovod.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/vodovod/data
	${INSTALL_DATA} ${WRKSRC}/data/* ${PREFIX}/share/vodovod/data

.include <bsd.port.mk>
