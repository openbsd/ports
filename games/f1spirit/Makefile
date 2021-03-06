# $OpenBSD: Makefile,v 1.19 2021/03/06 15:29:07 sthen Exp $

COMMENT=	remake of Konami's F1-Spirit

DISTNAME=	f1spirit.src_0.rc9-1615
PKGNAME=	${DISTNAME:S/.src_0.rc9-/-0./}
REVISION=	7
WRKDIST=	${WRKDIR}/${DISTNAME:S/.src_0.rc9-/-0.rc9./}
DISTFILES=	${DISTNAME}-1{${DISTNAME}}.tgz

EXTRACT_SUFX=	.tgz
CATEGORIES=	games

HOMEPAGE=	https://f1spirit.jorito.net/
MASTER_SITES=	https://braingames.jorito.net/f1spirit/

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
