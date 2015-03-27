# $OpenBSD: Makefile,v 1.8 2015/03/27 08:41:04 ajacoutot Exp $

COMMENT=	kill and destroy as many targets as possible in 3 minutes

DISTNAME =	barrage-1.0.4
CATEGORIES=	games
REVISION =	0

HOMEPAGE=	http://lgames.sourceforge.net/?project=Barrage

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL c m pthread SDL_mixer

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgames/}

LIB_DEPENDS=	devel/sdl-mixer
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/barrage
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/barrage

.include <bsd.port.mk>
