# $OpenBSD: Makefile,v 1.7 2021/02/28 17:41:20 daniel Exp $

NOT_FOR_ARCHS=	${BE_ARCHS}

COMMENT=	open-source port of Prince of Persia

# XXX: switching to a tagged release will require bumping EPOCH
DISTNAME=	sdlpop-20210227
GH_ACCOUNT=	NagyD
GH_PROJECT=	SDLPoP
GH_COMMIT=	b91c1d4e8171440b9f47c1b246400509fde76d8c

CATEGORIES=	games

MAINTAINER=	Robert Nagy <robert@openbsd.org>

WRKSRC=		${WRKDIST}/src
USE_GMAKE=	Yes
MAKE_FLAGS=	CC="${CC}" LOCALBASE="${LOCALBASE}"

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	SDL2 SDL2_image c m

LIB_DEPENDS=	devel/sdl2-image

pre-configure:
	${SUBST_CMD} ${WRKSRC}/seg009.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/sdlpop/data
	cp -rp ${WRKDIST}/data/* ${PREFIX}/share/sdlpop/data
	${INSTALL_PROGRAM} \
		${WRKDIST}/prince ${PREFIX}/bin/sdlpop
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlpop
	${INSTALL_DATA} ${WRKDIST}/doc/Readme.txt ${PREFIX}/share/doc/sdlpop

.include <bsd.port.mk>
