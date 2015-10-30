# $OpenBSD: Makefile,v 1.8 2015/10/30 12:47:39 sthen Exp $

COMMENT=	remake of Konami's F1-Spirit

DISTNAME=	f1spirit.src_0.rc9-1615
PKGNAME=	${DISTNAME:S/.src_0.rc9-/-0./}
REVISION =	1
WRKDIST=	${WRKDIR}/${DISTNAME:S/.src_0.rc9-/-0.rc9./}

EXTRACT_SUFX=	.tgz
CATEGORIES=	games

HOMEPAGE=	http://f1spirit.jorito.net/
MASTER_SITES=	http://braingames.jorito.net/f1spirit/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	GL GLU SDL c m crypto pthread ssl z SDL_image SDL_net \
		SDL_mixer curl idn nghttp2 stdc++

NO_TEST=	Yes
USE_GMAKE=	Yes

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-net \
		devel/sdl-mixer \
		net/curl \
		devel/libidn

.include <bsd.port.mk>
