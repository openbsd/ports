# $OpenBSD: Makefile,v 1.21 2011/07/08 22:39:14 ajacoutot Exp $

COMMENT=	astrosmash clone for X

DISTNAME=	cosmosmash-1.4.5

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/cosmosmash.html

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += SDL SDL_image SDL_mixer c flatzebra-0.1 m pthread stdc++

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	devel/flatzebra>=0.1.5
RUN_DEPENDS=	devel/desktop-file-utils

USE_GROFF =	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
