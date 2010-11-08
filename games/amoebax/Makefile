# $OpenBSD: Makefile,v 1.5 2010/11/08 13:51:52 espie Exp $

COMMENT=	cute and addictive action-puzzle game

DISTNAME= 	amoebax-0.2.0
REVISION =	0

CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.emma-soft.com/games/amoebax/

MASTER_SITES=	${HOMEPAGE}download/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL/LAL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	SDL c m pthread stdc++ SDL_image SDL_mixer

LIB_DEPENDS=	::devel/sdl-image \
		::devel/sdl-mixer

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_STYLE=gnu

USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amoebax
	${INSTALL_DATA} ${WRKSRC}/doc/manual.pdf ${PREFIX}/share/doc/amoebax

.include <bsd.port.mk>
