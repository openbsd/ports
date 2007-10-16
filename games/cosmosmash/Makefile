# $OpenBSD: Makefile,v 1.11 2007/10/16 16:34:11 ajacoutot Exp $

COMMENT=	astrosmash clone for X

DISTNAME=	cosmosmash-1.4.2
CATEGORIES=	games

HOMEPAGE=	http://perso.b2b2c.ca/sarrazip/dev/cosmosmash.html

MAINTAINER=	Serge Basterot <sb@wo-do.com>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		SDL c m pthread stdc++

MASTER_SITES=	http://perso.b2b2c.ca/sarrazip/dev/

LIB_DEPENDS=	flatzebra-0.1::devel/flatzebra \
		SDL_mixer::devel/sdl-mixer \
		SDL_image::devel/sdl-image
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
