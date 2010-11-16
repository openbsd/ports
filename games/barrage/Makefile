# $OpenBSD: Makefile,v 1.5 2010/11/16 11:23:26 espie Exp $

COMMENT=	kill and destroy as many targets as possible in 3 minutes

DISTNAME=	barrage-1.0.2
REVISION =	1
CATEGORIES=	games

HOMEPAGE=	http://lgames.sourceforge.net/?project=Barrage

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	SDL c m pthread SDL_mixer

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgames/}

LIB_DEPENDS=	devel/sdl-mixer
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/barrage
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/barrage

.include <bsd.port.mk>
