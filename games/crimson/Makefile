# $OpenBSD: Makefile,v 1.9 2004/01/12 06:38:54 jolan Exp $

COMMENT=	"tactical war game like Battle Isle"
DISTNAME=	crimson-0.3.8
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}files/

HOMEPAGE=	http://crimson.seul.org/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-bi2cf --enable-cfed --enable-comet

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/*.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
