# $OpenBSD: Makefile,v 1.1.1.1 2013/08/12 16:43:38 pascal Exp $

COMMENT =		jump 'n' run game

DISTNAME =		supertux-0.1.3

CATEGORIES =		games

HOMEPAGE =		http://supertux.lethargik.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL SDL_image SDL_mixer X11 c m pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_BERLIOS:=supertux/}
EXTRACT_SUFX =		.tar.bz2

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/sdl-image \
			devel/sdl-mixer

CONFIGURE_STYLE =	gnu

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
