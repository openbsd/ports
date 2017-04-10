# $OpenBSD: Makefile,v 1.3 2017/04/10 11:46:18 sthen Exp $

COMMENT =		hexagonal tile-based puzzle game
DISTNAME =		hex-a-hop-1.1.0
CATEGORIES =		games
HOMEPAGE =		http://hexahop.sourceforge.net

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL SDL_mixer SDL_ttf c m pthread ${LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=hexahop/}

LIB_DEPENDS =		devel/sdl-mixer \
			devel/sdl-ttf

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
