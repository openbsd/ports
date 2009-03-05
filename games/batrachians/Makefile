# $OpenBSD: Makefile,v 1.2 2009/03/05 07:42:53 ajacoutot Exp $

COMMENT=	clone of the classic Frog Bog game

DISTNAME=	batrachians-0.1.2
CATEGORIES=	games

HOMEPAGE=	http://perso.b2b2c.ca/sarrazip/dev/batrachians.html

MAINTAINER=	Antoine Jacoutot

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://perso.b2b2c.ca/sarrazip/dev/

WANTLIB=	SDL SDL_image SDL_mixer c m pthread stdc++

USE_X11=	Yes

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	flatzebra-0.1::devel/flatzebra

CONFIGURE_STYLE=gnu

FAKE_FLAGS=	docdir=${PREFIX}/share/doc/batrachians

.include <bsd.port.mk>
