# $OpenBSD: Makefile,v 1.20 2010/11/16 11:23:25 espie Exp $

COMMENT=	Night Stalker clone for X

DISTNAME=	afternoonstalker-1.1.3
REVISION =	0

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/afternoonstalker.html

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += SDL SDL_image SDL_mixer c m pthread stdc++ flatzebra-0.1>=1

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	flatzebra->=0.1.4:devel/flatzebra
RUN_DEPENDS=	devel/desktop-file-utils

USE_GROFF =	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
