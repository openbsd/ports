# $OpenBSD: Makefile,v 1.9 2006/08/02 09:36:20 espie Exp $

COMMENT=	"Night Stalker clone for X"

DISTNAME=	afternoonstalker-1.0.2
CATEGORIES=	games

HOMEPAGE=	http://www3.sympatico.ca/sarrazip/dev/afternoonstalker.html

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL SDL_image X11 Xext c m pthread stdc++ usbhid

MASTER_SITES=	http://www3.sympatico.ca/sarrazip/dev/

LIB_DEPENDS=	gengameng.>=4.1::devel/gengameng \
		SDL_mixer::devel/sdl-mixer

USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
