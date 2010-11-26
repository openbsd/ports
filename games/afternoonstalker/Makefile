# $OpenBSD: Makefile,v 1.21 2010/11/26 07:20:11 espie Exp $

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

LIB_DEPENDS=	devel/flatzebra>=0.1.4
RUN_DEPENDS=	devel/desktop-file-utils

USE_GROFF =	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
