COMMENT =		library for creating a custom Minecraft launcher

MODPY_DISTV =	5.3

DISTNAME =		minecraft-launcher-lib-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		games

HOMEPAGE =		https://codeberg.org/JakobDev/minecraft-launcher-lib

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		www/py-requests
RUN_DEPENDS =		www/py-requests

# No tests in the upstream library
NO_TEST =		Yes

.include <bsd.port.mk>
