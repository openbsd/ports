# $OpenBSD: Makefile,v 1.1.1.1 2002/04/28 08:25:17 pvalchev Exp $

COMMENT=	"breakout game with many levels, powerups, good graphics" 

VERSION=	2.2.2
DISTNAME=	lbreakout2-${VERSION}
CATEGORIES=	games x11
NEED_VERSION=	1.525

HOMEPAGE=	http://lgames.sourceforge.net/index.php?action=show_project&project=LBreakout2

MAINTAINER=	Lurene Grenier <lurene@menagerie.tf>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= lgames

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer \
		png.2.0::graphics/png
		
CONFIGURE_STYLE= gnu
CONFIGURE_ENV= LDFLAGS="-L${LOCALBASE}/lib"

USE_X11=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
