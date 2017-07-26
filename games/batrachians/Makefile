# $OpenBSD: Makefile,v 1.16 2017/07/26 22:45:20 sthen Exp $

COMMENT=	clone of the classic Frog Bog game

DISTNAME =	batrachians-0.1.6
CATEGORIES=	games
REVISION =	0

HOMEPAGE=	http://sarrazip.com/dev/batrachians.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://sarrazip.com/dev/

WANTLIB=	SDL SDL_image SDL_mixer c m pthread ${COMPILER_LIBCXX} flatzebra-0.1>=1

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/flatzebra>=0.1.5

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
