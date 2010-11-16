# $OpenBSD: Makefile,v 1.9 2010/11/16 11:23:26 espie Exp $

COMMENT=	clone of the classic Frog Bog game

DISTNAME=	batrachians-0.1.3
CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/batrachians.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://sarrazip.com/dev/

WANTLIB=	SDL SDL_image SDL_mixer c m pthread stdc++ flatzebra-0.1>=1

USE_GROFF =	Yes

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	flatzebra->=0.1.4:devel/flatzebra

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
