COMMENT =		sidescrolling space shmup

V =			2.4
DISTNAME =		starfighter-$V-src
PKGNAME =		starfighter-$V
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		https://pr-starfighter.github.io/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 SDL2_image SDL2_mixer SDL2_ttf c glib-2.0 gobject-2.0
WANTLIB += harfbuzz intl m pango-1.0 pthread

SITES = https://github.com/pr-starfighter/starfighter/releases/download/v${V}/

COMPILER =		base-clang ports-gcc base-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =		devel/pango \
			devel/sdl2-image \
			devel/sdl2-mixer \
			devel/sdl2-ttf

RUN_DEPENDS =		devel/desktop-file-utils

CONFIGURE_STYLE =	gnu

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
