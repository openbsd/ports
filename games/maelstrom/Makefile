# $OpenBSD: Makefile,v 1.1.1.1 2008/06/04 06:50:20 phessler Exp $

COMMENT =		asteroid-like game

DISTNAME =		Maelstrom-3.0.6
PKGNAME = 		${DISTNAME:L}
CATEGORIES =		games x11
HOMEPAGE =		http://www.devolution.com/~slouken/Maelstrom/
MASTER_SITES =		${HOMEPAGE}src/

MAINTAINER =		Peter Hessler <phessler@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_X11 =		Yes
CONFIGURE_STYLE = 	gnu

WANTLIB =		c m pthread stdc++
LIB_DEPENDS =		SDL::devel/sdl \
			SDL_net::devel/sdl-net

.include <bsd.port.mk>
