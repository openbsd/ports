COMMENT =		library for creating a custom Minecraft launcher

MODPY_EGG_VERSION =	5.3

DISTNAME =		minecraft-launcher-lib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		https://codeberg.org/JakobDev/minecraft-launcher-lib

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		www/py-requests${MODPY_FLAVOR}
RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}

# No tests in the upstream library
NO_TEST =		Yes

.include <bsd.port.mk>
