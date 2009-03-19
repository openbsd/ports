# $OpenBSD: Makefile,v 1.1.1.1 2009/03/19 18:28:18 landry Exp $

COMMENT=	remake of Konami's Road Fighter

DISTNAME=	roadfighter.src_1.0.1269
PKGNAME=	${DISTNAME:S/.src_/-/}
WRKDIST=	${WRKDIR}/${DISTNAME:S/.src_/-/}

EXTRACT_SUFX=	.tgz
CATEGORIES=	games

HOMEPAGE=	http://roadfighter.jorito.net/
MASTER_SITES=	http://braingames.jorito.net/roadfighter/downloads/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes

RUN_DEPENDS=	::devel/desktop-file-utils
LIB_DEPENDS=	SDL_sound::devel/sdl-sound \
		SDL_image::devel/sdl-image \
		SDL_ttf::devel/sdl-ttf \
		SDL_mixer::devel/sdl-mixer
WANTLIB=	SDL c stdc++ m pthread

.include <bsd.port.mk>
