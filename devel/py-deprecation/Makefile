COMMENT =		library to handle automated deprecations

MODPY_DISTV =		2.1.0

DISTNAME =		deprecation-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		7

CATEGORIES =		devel

HOMEPAGE =		https://deprecation.readthedocs.io/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

RUN_DEPENDS =		sysutils/py-packaging

TEST_DEPENDS =		devel/flake8 \
			devel/py-coverage

.include <bsd.port.mk>
