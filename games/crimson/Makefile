# $OpenBSD: Makefile,v 1.1.1.1 2003/04/26 19:40:37 sturm Exp $

COMMENT=	"tactical war game like Battle Isle"

DISTNAME=	crimson-0.3.1
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}crimson/

HOMEPAGE=	http://www.lanipage.de/jens/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-bi2cf --enable-cfed --enable-comet

.include <bsd.port.mk>
