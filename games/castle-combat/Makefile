# $OpenBSD: Makefile,v 1.3 2002/06/08 06:03:09 pvalchev Exp $
COMMENT=	"Rampart arcade game clone for X11" 

VERSION=	0.7.2
DISTNAME=	castle-combat-${VERSION}
NEED_VERSION=	1.500

CATEGORIES=	games x11

HOMEPAGE=	http://www.linux-games.com/castle-combat/

MAINTAINER=	Lurene Grenier <lurene@daemonkitty.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer \
		png.2::graphics/png

MASTER_SITES=	${HOMEPAGE}

USE_X11= Yes
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --with-png
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
