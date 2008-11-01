# $OpenBSD: Makefile,v 1.14 2008/11/01 20:54:40 naddy Exp $

COMMENT=	burgertime clone for X

DISTNAME=	burgerspace-1.8.2
CATEGORIES=	games

HOMEPAGE=	http://perso.b2b2c.ca/sarrazip/dev/burgerspace.html

MAINTAINER=	Serge Basterot <sb@wo-do.com>

# GPLv2
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
