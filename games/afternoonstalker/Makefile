# $OpenBSD: Makefile,v 1.5 2003/11/21 21:02:58 sturm Exp $

COMMENT=	"Night Stalker clone for X"

DISTNAME=	afternoonstalker-1.0.2
CATEGORIES=	games

HOMEPAGE=	http://www3.sympatico.ca/sarrazip/dev/afternoonstalker.html

MAINTAINER= 	Lurene Grenier <lurene@daemonkitty.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www3.sympatico.ca/sarrazip/dev/

LIB_DEPENDS=	gengameng.4.1::devel/gengameng \
		SDL_mixer::devel/sdl-mixer

MODULES=	gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	c++

USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
