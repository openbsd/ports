# $OpenBSD: Makefile,v 1.3 2013/04/07 14:34:35 kirby Exp $

COMMENT =		free/libre action roleplaying engine

DISTNAME =		flare-0.18

CATEGORIES =		games

HOMEPAGE =		http://flarerpg.org

# code GPLv3+, data CC BY-SA 3.0+
PERMIT_PACKAGE_CDROM =		Yes

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

WANTLIB +=		SDL SDL_image SDL_mixer SDL_ttf c m pthread stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=flare-game/}

MODULES =		devel/cmake
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf

CONFIGURE_ARGS =	-DBINDIR=bin \
			-DDATADIR=share/flare

WRKDIST =		${WRKDIR}/${DISTNAME:S/_linux//}

NO_TEST =		Yes

.include <bsd.port.mk>
