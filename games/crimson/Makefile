# $OpenBSD: Makefile,v 1.13 2006/10/04 22:20:32 naddy Exp $

COMMENT=	"tactical war game like Battle Isle"
DISTNAME=	crimson-0.4.9
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}files/

HOMEPAGE=	http://crimson.seul.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		SDL X11 Xext c m pthread stdc++ usbhid z

USE_X11=	Yes
USE_GMAKE=	Yes

LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer \
		SDL_ttf::devel/sdl-ttf

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-bi2cf --enable-cfed --enable-comet

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/*.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
