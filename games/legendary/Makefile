COMMENT =		free and open source replacement for Epic Games Launcher
MODPY_DISTV =	0.20.34
DISTNAME =		legendary-gl-${MODPY_DISTV}
PKGNAME =		legendary-${MODPY_DISTV}
REVISION =		1

CATEGORIES =		games
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-wheel \
			sysutils/py-filelock \
			www/py-requests

.include <bsd.port.mk>
