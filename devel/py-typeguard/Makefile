COMMENT =	run-time type checker for Python

MODPY_EGG_VERSION =	2.13.3

DISTNAME =	typeguard-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

# https://github.com/agronholm/typeguard
HOMEPAGE =	https://typeguard.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-mypy${MODPY_FLAVOR}

.include <bsd.port.mk>
