# $OpenBSD: Makefile,v 1.1.1.1 2003/08/08 21:15:06 jolan Exp $

COMMENT=	"clone of arcade game 'Defender' with a Linux theme"

DISTNAME=	defendguin-0.0.10
CATEGORIES=	games x11
HOMEPAGE=	http://www.newbreedsoftware.com/defendguin/

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.nbswebfx.com/downloads/

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer

USE_X11=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
