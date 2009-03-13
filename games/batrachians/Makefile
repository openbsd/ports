# $OpenBSD: Makefile,v 1.3 2009/03/13 17:14:13 naddy Exp $

COMMENT=	clone of the classic Frog Bog game

DISTNAME=	batrachians-0.1.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/batrachians.html

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://sarrazip.com/dev/

WANTLIB=	SDL SDL_image SDL_mixer c m pthread stdc++

USE_X11=	Yes

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	flatzebra-0.1.>=1.0::devel/flatzebra

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
