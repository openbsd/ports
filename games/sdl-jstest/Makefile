# $OpenBSD: Makefile,v 1.1.1.1 2018/01/12 22:32:31 bcallah Exp $

COMMENT =	simple SDL joystick test application
DISTNAME =	sdl-jstest-20180105
CATEGORIES =	games

GH_ACCOUNT =	Grumbel
GH_PROJECT =	sdl-jstest
GH_COMMIT =	159fe1b34d0e00f5493742d8b82bed38e6938c68

MAINTAINER =	Thomas Frohwein <frohwein@ymail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL SDL2 c curses form pthread

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl \
		devel/sdl2

NO_TEST =	Yes

.include <bsd.port.mk>
