# $OpenBSD: Makefile,v 1.11 2011/07/08 22:38:31 ajacoutot Exp $

COMMENT=	clone of the classic Frog Bog game

DISTNAME=	batrachians-0.1.5
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
LIB_DEPENDS=	devel/flatzebra>=0.1.5

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
