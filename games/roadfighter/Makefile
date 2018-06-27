# $OpenBSD: Makefile,v 1.11 2018/06/27 21:03:49 espie Exp $

COMMENT=	remake of Konami's Road Fighter

DISTNAME=	roadfighter.src_1.0.1269
PKGNAME=	${DISTNAME:S/.src_/-/}
REVISION =	3
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

.include <bsd.port.mk>
