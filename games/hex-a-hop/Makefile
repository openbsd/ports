# $OpenBSD: Makefile,v 1.4 2017/07/16 19:18:54 espie Exp $

COMMENT =		hexagonal tile-based puzzle game
DISTNAME =		hex-a-hop-1.1.0
CATEGORIES =		games
HOMEPAGE =		http://hexahop.sourceforge.net

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL SDL_mixer SDL_ttf c m pthread ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=hexahop/}

LIB_DEPENDS =		devel/sdl-mixer \
			devel/sdl-ttf

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
