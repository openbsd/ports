# $OpenBSD: Makefile,v 1.2 2013/03/11 11:07:38 espie Exp $

COMMENT =		free/libre action roleplaying engine

DISTNAME =		flare_linux_v017_1
PKGNAME =		flare-0.17.1

CATEGORIES =		games

HOMEPAGE =		http://flarerpg.org

# code GPLv3+, data CC BY-SA 3.0+
PERMIT_PACKAGE_CDROM =		Yes

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

WANTLIB +=		SDL SDL_image SDL_mixer SDL_ttf c m pthread stdc++

MASTER_SITES =		https://github.com/downloads/clintbellanger/flare-game/

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
