# $OpenBSD: Makefile,v 1.2 2003/05/12 08:23:47 jolan Exp $

COMMENT=	"enhanced clone of Id Software's Doom game; multiplayer"
DISTNAME=	prboom-2.2.3
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prboom/}

HOMEPAGE=	http://prboom.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

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
