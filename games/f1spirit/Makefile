# $OpenBSD: Makefile,v 1.17 2019/07/12 20:46:17 sthen Exp $

COMMENT=	remake of Konami's F1-Spirit

DISTNAME=	f1spirit.src_0.rc9-1615
PKGNAME=	${DISTNAME:S/.src_0.rc9-/-0./}
REVISION =	6
WRKDIST=	${WRKDIR}/${DISTNAME:S/.src_0.rc9-/-0.rc9./}

EXTRACT_SUFX=	.tgz
CATEGORIES=	games

HOMEPAGE=	http://f1spirit.jorito.net/
MASTER_SITES=	http://braingames.jorito.net/f1spirit/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB+= GL GLU SDL SDL_image SDL_mixer SDL_net c crypto curl m nghttp2
WANTLIB+= pthread ssl ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST=	Yes
USE_GMAKE=	Yes

MAKE_ENV =	CC='${CXX}'

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-net \
		devel/sdl-mixer \
		net/curl \
		devel/libidn

.include <bsd.port.mk>
