# $OpenBSD: Makefile,v 1.1.1.1 2002/03/20 08:25:57 mark Exp $
COMMENT=	"Rampart arcade game clone for X11" 

VERSION=	0.7.2
DISTNAME=	castle-combat-${VERSION}
NEED_VERSION=	1.500

CATEGORIES=	games x11

HOMEPAGE=	http://www.linux-games.com/castle-combat/

MAINTAINER=	Lurene Grenier <lurene@menagerie.tf>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer \
		png.2::graphics/png

MASTER_SITES=	http://www.linux-games.com/
MASTER_SITE_SUBDIR=castle-combat

USE_X11= Yes
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --with-png
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
