COMMENT =		library to handle automated deprecations

MODPY_DISTV =	2.1.0

DISTNAME =		deprecation-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		5

CATEGORIES =		devel

HOMEPAGE =		https://deprecation.readthedocs.io/

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		sysutils/py-packaging

TEST_DEPENDS =		devel/flake8 \
			devel/py-coverage

.include <bsd.port.mk>
