COMMENT=	remake of Konami's Road Fighter

DISTNAME=	roadfighter.src_1.0.1269
PKGNAME=	${DISTNAME:S/.src_/-/}
REVISION =	5
WRKDIST=	${WRKDIR}/${DISTNAME:S/.src_/-/}

EXTRACT_SUFX=	.tgz
CATEGORIES=	games

HOMEPAGE=	https://roadfighter.jorito.net/
MASTER_SITES=	https://braingames.jorito.net/roadfighter/downloads/

# GPLv2
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes
USE_GMAKE=	Yes

MAKE_ENV =	CXX="${CXX}"

WANTLIB += ${COMPILER_LIBCXX} SDL SDL_image SDL_mixer SDL_sound
WANTLIB += SDL_ttf c m

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/sdl-sound \
		devel/sdl-image \
		devel/sdl-ttf \
		devel/sdl-mixer

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
