# $OpenBSD: Makefile,v 1.3 2009/12/22 16:28:00 ajacoutot Exp $

COMMENT=	kill and destroy as many targets as possible in 3 minutes

DISTNAME=	barrage-1.0.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games

HOMEPAGE=	http://lgames.sourceforge.net/?project=Barrage

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	SDL c m pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgames/}

LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/barrage
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/barrage

.include <bsd.port.mk>
