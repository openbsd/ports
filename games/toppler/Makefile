# $OpenBSD: Makefile,v 1.9 2004/11/28 22:41:21 espie Exp $

COMMENT=	"Nebulous rewrite of Tower Toppler"

VERSION=	0.96
DISTNAME=	toppler-${VERSION}
CATEGORIES=	games

HOMEPAGE=	http://toppler.sourceforge.net/

MAINTAINER= 	Lurene Grenier <lurene@daemonkitty.net>	

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext c m pthread stdc++ subhid

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=toppler/}

LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer

CONFIGURE_STYLE= autoconf no-autoheader
MAKE_FLAGS=	scoredir=/var/games

USE_X11=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/toppler
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/toppler
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/toppler
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/toppler/toppler.hsc

.include <bsd.port.mk>
