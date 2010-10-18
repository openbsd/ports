# $OpenBSD: Makefile,v 1.19 2010/10/18 18:00:17 espie Exp $

COMMENT=	burgertime clone for X

DISTNAME=	burgerspace-1.8.4
PKGNAME=	${DISTNAME}p0

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/burgerspace.html

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += SDL SDL_image SDL_mixer c m pthread stdc++

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	flatzebra-0.1.>=1.0:flatzebra->=0.1.4:devel/flatzebra
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
