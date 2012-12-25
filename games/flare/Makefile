# $OpenBSD: Makefile,v 1.1.1.1 2012/12/25 01:05:45 bentley Exp $

COMMENT =		free/libre action roleplaying engine

DISTNAME =		flare_linux_v017_1
PKGNAME =		flare-0.17.1

CATEGORIES =		games

HOMEPAGE =		http://flarerpg.org

# code GPLv3+, data CC BY-SA 3.0+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

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

NO_REGRESS =		Yes

.include <bsd.port.mk>
