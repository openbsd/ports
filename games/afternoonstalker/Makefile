# $OpenBSD: Makefile,v 1.13 2009/03/13 17:15:44 naddy Exp $

COMMENT=	Night Stalker clone for X

DISTNAME=	afternoonstalker-1.1.2
CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/afternoonstalker.html

MAINTAINER=	Serge Basterot <sb@wo-do.com>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	SDL c m pthread stdc++

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	flatzebra-0.1.>=1.0::devel/flatzebra \
		SDL_mixer.>=3::devel/sdl-mixer \
		SDL_image.>=2::devel/sdl-image
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
