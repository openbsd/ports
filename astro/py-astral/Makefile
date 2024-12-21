COMMENT =		calculations for the position of the sun and the moon

MODPY_DISTV =	2.2
DISTNAME =		astral-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		astro

HOMEPAGE =		https://astral.readthedocs.org

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-tz
TEST_DEPENDS =		devel/py-freezegun

.include <bsd.port.mk>
