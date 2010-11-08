# $OpenBSD: Makefile,v 1.21 2010/11/08 13:51:52 espie Exp $

COMMENT=	burgertime clone for X

DISTNAME=	burgerspace-1.8.4
REVISION =	0

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/burgerspace.html

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += SDL SDL_image SDL_mixer c m pthread stdc++ flatzebra-0.1.>=1

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	:flatzebra->=0.1.4:devel/flatzebra
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_GROFF =	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
