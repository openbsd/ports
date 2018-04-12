# $OpenBSD: Makefile,v 1.6 2018/04/12 08:37:09 sthen Exp $

COMMENT =		hexagonal tile-based puzzle game
DISTNAME =		hex-a-hop-1.1.0
CATEGORIES =		games
HOMEPAGE =		http://hexahop.sourceforge.net
REVISION =		0

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL SDL_mixer SDL_ttf c m pthread ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=hexahop/}

LIB_DEPENDS =		devel/sdl-mixer \
			devel/sdl-ttf

CONFIGURE_STYLE =	gnu

post-extract:
	cd ${WRKSRC}/src; perl -i -pe 's/\r$$//' hex_puzzzle.cpp text.cpp

.include <bsd.port.mk>
