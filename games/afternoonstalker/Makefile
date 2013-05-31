# $OpenBSD: Makefile,v 1.24 2013/05/31 22:42:32 bentley Exp $

COMMENT=	Night Stalker clone for X

DISTNAME=	afternoonstalker-1.1.5

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/afternoonstalker.html

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += SDL SDL_image SDL_mixer c flatzebra-0.1 m pthread stdc++

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS =	devel/flatzebra>=0.1.6
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
