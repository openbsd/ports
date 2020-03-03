# $OpenBSD: Makefile,v 1.21 2020/03/03 20:09:52 bcallah Exp $

COMMENT=	clone of the classic Frog Bog game

DISTNAME =	batrachians-0.1.7
REVISION =	0
CATEGORIES=	games

HOMEPAGE=	https://perso.b2b2c.ca/~sarrazip/dev/batrachians.html

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://perso.b2b2c.ca/~sarrazip/dev/

WANTLIB=	SDL SDL_image SDL_mixer c m pthread ${COMPILER_LIBCXX} flatzebra-0.1>=1

COMPILER =		base-clang ports-gcc base-gcc

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/flatzebra>=0.1.7

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
