# $OpenBSD: Makefile,v 1.2 2013/03/11 11:07:39 espie Exp $

COMMENT =		hexagonal tile-based puzzle game
DISTNAME =		hex-a-hop-1.1.0
CATEGORIES =		games
HOMEPAGE =		http://hexahop.sourceforge.net

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL SDL_mixer SDL_ttf c m pthread stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=hexahop/}

LIB_DEPENDS =		devel/sdl-mixer \
			devel/sdl-ttf

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
