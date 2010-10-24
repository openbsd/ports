# $OpenBSD: Makefile,v 1.17 2010/10/24 21:19:01 ajacoutot Exp $

COMMENT=	astrosmash clone for X

DISTNAME=	cosmosmash-1.4.4
PKGNAME=	${DISTNAME}p0

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/cosmosmash.html

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += SDL SDL_image SDL_mixer c m pthread stdc++

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	flatzebra-0.1.>=1.0:flatzebra->=0.1.4:devel/flatzebra
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_GROFF =	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
