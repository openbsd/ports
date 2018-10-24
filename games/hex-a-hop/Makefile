# $OpenBSD: Makefile,v 1.7 2018/10/24 14:28:03 sthen Exp $

COMMENT =		hexagonal tile-based puzzle game
DISTNAME =		hex-a-hop-1.1.0
CATEGORIES =		games
HOMEPAGE =		http://hexahop.sourceforge.net
REVISION =		1

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL SDL_mixer SDL_ttf c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=hexahop/}

LIB_DEPENDS =		devel/sdl-mixer \
			devel/sdl-ttf

CONFIGURE_STYLE =	gnu

post-extract:
	cd ${WRKSRC}/src; perl -i -pe 's/\r$$//' hex_puzzzle.cpp text.cpp

.include <bsd.port.mk>
