# $OpenBSD: Makefile,v 1.22 2020/03/26 20:51:02 naddy Exp $

COMMENT=	clone of the classic Frog Bog game

DISTNAME =	batrachians-0.1.7
REVISION =	1
CATEGORIES=	games

HOMEPAGE=	http://perso.b2b2c.ca/~sarrazip/dev/batrachians.html

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://perso.b2b2c.ca/~sarrazip/dev/

WANTLIB=	SDL SDL_image SDL_mixer c m pthread ${COMPILER_LIBCXX} flatzebra-0.1>=1

COMPILER =		base-clang ports-gcc base-gcc

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/flatzebra>=0.1.7

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
