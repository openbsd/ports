# $OpenBSD: Makefile,v 1.4 2003/01/21 09:38:22 pvalchev Exp $

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
USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
