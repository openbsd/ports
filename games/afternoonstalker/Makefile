# $OpenBSD: Makefile,v 1.12 2007/10/16 17:07:43 ajacoutot Exp $

COMMENT=	Night Stalker clone for X

DISTNAME=	afternoonstalker-1.1.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games

HOMEPAGE=	http://perso.b2b2c.ca/sarrazip/dev/afternoonstalker.html

MAINTAINER=	Serge basterot <sb@wo-do.com>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	SDL c m pthread stdc++

MASTER_SITES=	http://perso.b2b2c.ca/sarrazip/dev/

LIB_DEPENDS=	flatzebra-0.1::devel/flatzebra \
		SDL_mixer.>=3::devel/sdl-mixer \
		SDL_image.>=2::devel/sdl-image
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
