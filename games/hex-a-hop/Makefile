# $OpenBSD: Makefile,v 1.8 2019/07/12 20:46:19 sthen Exp $

COMMENT =		hexagonal tile-based puzzle game
DISTNAME =		hex-a-hop-1.1.0
CATEGORIES =		games
HOMEPAGE =		http://hexahop.sourceforge.net
REVISION =		1

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		SDL SDL_mixer SDL_ttf c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=hexahop/}

LIB_DEPENDS =		devel/sdl-mixer \
			devel/sdl-ttf

CONFIGURE_STYLE =	gnu

post-extract:
	cd ${WRKSRC}/src; perl -i -pe 's/\r$$//' hex_puzzzle.cpp text.cpp

.include <bsd.port.mk>
