COMMENT =	simple curses audio player

MODPY_DISTV =	5.0.1

DISTNAME =	cplay-ng-${MODPY_DISTV}
PKGNAME =	cplay-${MODPY_DISTV}
REVISION =	4

CATEGORIES =	audio

HOMEPAGE =	https://github.com/xi/cplay-ng

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		multimedia/mpv

post-install:
	ln -s cplay-ng ${PREFIX}/bin/cplay

.include <bsd.port.mk>
