COMMENT =	classic 1980s side-scrolling WWI dogfighting game
DISTNAME =	sdl-sopwith-2.8.0
CATEGORIES =	games
REVISION =	0

HOMEPAGE =	https://fragglet.github.io/sdl-sopwith/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/fragglet/sdl-sopwith/releases/download/${DISTNAME}/

RUN_DEPENDS+=	x11/gtk+4,-guic \
		devel/desktop-file-utils

WANTLIB += c m SDL2

LIB_DEPENDS =		devel/sdl2

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.72
AUTOMAKE_VERSION =	1.16

.include <bsd.port.mk>
