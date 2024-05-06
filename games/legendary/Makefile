COMMENT =		free and open source replacement for Epic Games Launcher
MODPY_EGG_VERSION =	0.20.34
DISTNAME =		legendary-gl-${MODPY_EGG_VERSION}
PKGNAME =		legendary-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		games
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-wheel${MODPY_FLAVOR} \
			sysutils/py-filelock${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
