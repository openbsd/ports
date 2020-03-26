# $OpenBSD: Makefile,v 1.33 2020/03/26 20:51:02 naddy Exp $

COMMENT=	Night Stalker clone for X

DISTNAME=	afternoonstalker-1.1.6
REVISION=	1

CATEGORIES=	games

HOMEPAGE=	http://perso.b2b2c.ca/~sarrazip/dev/afternoonstalker.html

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += SDL SDL_image SDL_mixer c flatzebra-0.1 m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://perso.b2b2c.ca/~sarrazip/dev/

LIB_DEPENDS =	devel/flatzebra>=0.1.7
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
