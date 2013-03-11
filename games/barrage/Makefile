# $OpenBSD: Makefile,v 1.6 2013/03/11 11:07:37 espie Exp $

COMMENT=	kill and destroy as many targets as possible in 3 minutes

DISTNAME=	barrage-1.0.2
REVISION =	1
CATEGORIES=	games

HOMEPAGE=	http://lgames.sourceforge.net/?project=Barrage

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL c m pthread SDL_mixer

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgames/}

LIB_DEPENDS=	devel/sdl-mixer
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/barrage
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/barrage

.include <bsd.port.mk>
