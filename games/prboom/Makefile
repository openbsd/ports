# $OpenBSD: Makefile,v 1.3 2003/09/24 08:30:09 jolan Exp $

COMMENT=	"enhanced clone of Id Software's Doom game; multiplayer"
DISTNAME=	prboom-2.2.4
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prboom/}

HOMEPAGE=	http://prboom.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_X11=Yes

LIB_DEPENDS=	SDL_mixer.::devel/sdl-mixer \
		SDL_net.::devel/sdl-net

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-cpu-opt

.include <bsd.port.mk>
