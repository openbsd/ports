# $OpenBSD: Makefile,v 1.31 2020/03/01 22:08:28 bcallah Exp $

COMMENT=	Night Stalker clone for X

DISTNAME=	afternoonstalker-1.1.6

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/afternoonstalker.html

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += SDL SDL_image SDL_mixer c flatzebra-0.1 m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS =	devel/flatzebra>=0.1.7
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
