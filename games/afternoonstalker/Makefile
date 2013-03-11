# $OpenBSD: Makefile,v 1.23 2013/03/11 11:07:37 espie Exp $

COMMENT=	Night Stalker clone for X

DISTNAME=	afternoonstalker-1.1.4

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/afternoonstalker.html

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += SDL SDL_image SDL_mixer c flatzebra-0.1 m pthread stdc++

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	devel/flatzebra>=0.1.5
RUN_DEPENDS=	devel/desktop-file-utils

USE_GROFF =	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
