# $OpenBSD: Makefile,v 1.2 2003/05/12 08:23:46 jolan Exp $

COMMENT=	"tactical war game like Battle Isle"

DISTNAME=	crimson-0.3.1
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}crimson/

HOMEPAGE=	http://www.lanipage.de/jens/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

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
