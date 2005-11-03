# $OpenBSD: Makefile,v 1.12 2005/11/03 18:28:55 naddy Exp $

COMMENT=	"Nebulous rewrite of Tower Toppler"

VERSION=	0.96
DISTNAME=	toppler-${VERSION}
CATEGORIES=	games

HOMEPAGE=	http://toppler.sourceforge.net/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext c m pthread stdc++ usbhid

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=toppler/}

LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf no-autoheader
MAKE_FLAGS=	scoredir=/var/games

USE_X11=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/toppler
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/toppler
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/toppler
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/toppler/toppler.hsc

.include <bsd.port.mk>
