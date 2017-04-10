# $OpenBSD: Makefile,v 1.25 2017/04/10 11:45:28 sthen Exp $

COMMENT=	Night Stalker clone for X

DISTNAME=	afternoonstalker-1.1.5

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/afternoonstalker.html

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += SDL SDL_image SDL_mixer c flatzebra-0.1 m pthread ${LIBCXX}

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS =	devel/flatzebra>=0.1.6
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
