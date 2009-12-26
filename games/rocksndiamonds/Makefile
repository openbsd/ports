# $OpenBSD: Makefile,v 1.13 2009/12/26 11:02:30 benoit Exp $

COMMENT =	maze game resembling boulderdash

DISTNAME =	rocksndiamonds-3.2.6.1
CATEGORIES =	games x11

HOMEPAGE =	http://www.artsoft.org/rocksndiamonds/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	SDL c m pthread smpeg

MASTER_SITES =	http://www.artsoft.org/RELEASES/unix/rocksndiamonds/

LIB_DEPENDS =	SDL_mixer::devel/sdl-mixer \
		SDL_image::devel/sdl-image \
		SDL_net:sdl-net->=1.2.7:devel/sdl-net

USE_GMAKE =	Yes
USE_X11 =	Yes

ALL_TARGET =	sdl

# XXX segfaults with gcc3
MODULES +=	gcc4
MODGCC4_ARCHES =*

NO_REGRESS =	Yes

N = rocksndiamonds

post-extract:
	@find ${WRKSRC} -name \*.orig -exec rm {} \;

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/${N} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	@cp -R ${WRKSRC}/{graphics,levels,music,sounds} ${PREFIX}/share/${N}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${N}
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/${N}

.include <bsd.port.mk>
