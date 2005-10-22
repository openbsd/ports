# $OpenBSD: Makefile,v 1.6 2005/10/22 20:26:40 canacar Exp $

COMMENT=	"enhanced clone of Id Software's Doom game; multiplayer"
DISTNAME=	prboom-2.2.6
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prboom/}

HOMEPAGE=	http://prboom.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext c m pthread usbhid

USE_X11=Yes

LIB_DEPENDS=	SDL_mixer.::devel/sdl-mixer \
		SDL_net.::devel/sdl-net

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-cpu-opt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

.include <bsd.port.mk>
