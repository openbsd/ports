# $OpenBSD: Makefile,v 1.1.1.1 2002/11/26 08:56:53 sturm Exp $

COMMENT=	"enhanced clone of Id Software's Doom game; multiplayer"
DISTNAME=	prboom-2.2.3
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prboom/}

HOMEPAGE=	http://prboom.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=		SDL.::devel/sdl \
			SDL_net.::devel/sdl-net \
			SDL_mixer.::devel/sdl-mixer

USE_X11=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
