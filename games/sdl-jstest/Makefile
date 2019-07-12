# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:24 sthen Exp $

COMMENT =	simple SDL joystick test application
DISTNAME =	sdl-jstest-20180114
REVISION =	0
CATEGORIES =	games

GH_ACCOUNT =	Grumbel
GH_PROJECT =	sdl-jstest
GH_COMMIT =	34042f66c598957c1c05135e2619a44a5622a56e

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL SDL2 c curses form pthread

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl \
		devel/sdl2

NO_TEST =	Yes

.include <bsd.port.mk>
