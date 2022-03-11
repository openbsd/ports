COMMENT=	remake of Konami's F1-Spirit

DISTNAME=	f1spirit.src_0.rc9-1615
PKGNAME=	${DISTNAME:S/.src_0.rc9-/-0./}
REVISION=	8
WRKDIST=	${WRKDIR}/${DISTNAME:S/.src_0.rc9-/-0.rc9./}
DISTFILES=	${DISTNAME}-1{${DISTNAME}}.tgz

EXTRACT_SUFX=	.tgz
CATEGORIES=	games

HOMEPAGE=	https://f1spirit.jorito.net/
MASTER_SITES=	https://braingames.jorito.net/f1spirit/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB+= GL GLU SDL SDL_image SDL_mixer SDL_net c curl m
WANTLIB+= pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST=	Yes
USE_GMAKE=	Yes

MAKE_ENV =	CC='${CXX}'

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-net \
		devel/sdl-mixer \
		net/curl

.include <bsd.port.mk>
