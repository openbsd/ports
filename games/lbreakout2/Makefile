# $OpenBSD: Makefile,v 1.6 2004/03/02 22:18:53 naddy Exp $

COMMENT=	"breakout game with many levels, powerups, good graphics" 

DISTNAME=	lbreakout2-2.2.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11

HOMEPAGE=	http://lgames.sourceforge.net/index.php?action=show_project&project=LBreakout2

MAINTAINER=	Lurene Grenier <lurene@daemonkitty.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgames/}

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer \
		png.2.0::graphics/png
		
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_X11=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
