# $OpenBSD: Makefile,v 1.3 2016/11/10 05:41:53 jca Exp $

COMMENT=	open-source port of Prince of Persia

DISTNAME=	sdlpop-20161103
CATEGORIES=	games
REVISION=	1

GH_ACCOUNT=	NagyD
GH_PROJECT=	SDLPoP
GH_COMMIT=     	6185f28a3b8b74cfc5762aeeea38aedb4e142cbc

MAINTAINER=	Robert Nagy <robert@openbsd.org>

WRKSRC=		${WRKDIST}/src
USE_GMAKE=	Yes

# GPLv3
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	SDL2 SDL2_image SDL2_mixer c m

LIB_DEPENDS=	devel/sdl2-image \
		devel/sdl2-mixer

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/seg009.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/sdlpop/data
	cp -rp ${WRKDIST}/data/* ${PREFIX}/share/sdlpop/data
	${INSTALL_PROGRAM} \
		${WRKDIST}/prince ${PREFIX}/bin/sdlpop
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlpop
	${INSTALL_DATA} ${WRKDIST}/doc/Readme.txt ${PREFIX}/share/doc/sdlpop

.include <bsd.port.mk>
