# $OpenBSD: Makefile,v 1.2 2002/04/08 23:21:33 naddy Exp $

COMMENT=	"Nebulous rewrite of Tower Toppler"

VERSION=	0.96
DISTNAME=	toppler-${VERSION}
CATEGORIES=	games
NEED_VERSION=	1.504

HOMEPAGE=	http://toppler.sourceforge.net

MAINTAINER= 	Lurene Grenier <lurene@menagerie.tf>	

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		http://prdownloads.sourceforge.net/toppler/

LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer

CONFIGURE_STYLE= autoconf
MAKE_FLAGS=	scoredir=/var/games

USE_X11=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/toppler
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/toppler

.include <bsd.port.mk>
