# $OpenBSD: Makefile,v 1.9 2013/10/11 23:49:31 naddy Exp $

COMMENT=	cute and addictive action-puzzle game

DISTNAME= 	amoebax-0.2.1

CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.emma-soft.com/games/amoebax/

MASTER_SITES=	${HOMEPAGE}download/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL/LAL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL c m pthread stdc++ SDL_image SDL_mixer

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer

RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE=gnu


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amoebax
	${INSTALL_DATA} ${WRKSRC}/doc/manual.pdf ${PREFIX}/share/doc/amoebax

.include <bsd.port.mk>
