# $OpenBSD: Makefile,v 1.4 2003/06/11 21:42:29 jolan Exp $

COMMENT=	"tactical war game like Battle Isle"

DISTNAME=	crimson-0.3.3
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

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/*.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
