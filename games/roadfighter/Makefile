# $OpenBSD: Makefile,v 1.12 2018/10/24 14:28:03 sthen Exp $

COMMENT=	remake of Konami's Road Fighter

DISTNAME=	roadfighter.src_1.0.1269
PKGNAME=	${DISTNAME:S/.src_/-/}
REVISION =	4
WRKDIST=	${WRKDIR}/${DISTNAME:S/.src_/-/}

EXTRACT_SUFX=	.tgz
CATEGORIES=	games

HOMEPAGE=	http://roadfighter.jorito.net/
MASTER_SITES=	http://braingames.jorito.net/roadfighter/downloads/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=	Yes
USE_GMAKE=	Yes

MAKE_ENV =	CXX="${CXX}"

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/sdl-sound \
		devel/sdl-image \
		devel/sdl-ttf \
		devel/sdl-mixer
WANTLIB=	SDL c ${COMPILER_LIBCXX} m pthread SDL_sound SDL_image SDL_ttf SDL_mixer

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
