# $OpenBSD: Makefile,v 1.1.1.1 2001/07/26 19:11:51 pvalchev Exp $

COMMENT=	"zombies clone"

VERSION=	1.0.0
DISTNAME=	sdlzombies-${VERSION}
CATEGORIES=	games x11
NEED_VERSION=	1.427

HOMEPAGE=	http://hocwp.free.fr/sdlzombies.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://hocwp.free.fr/

LIB_DEPENDS=	SDL_image.0.0:sdl-image-*:devel/sdl-image \
		SDL_mixer.0.0:sdl-mixer-*:devel/sdl-mixer

USE_X11=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
