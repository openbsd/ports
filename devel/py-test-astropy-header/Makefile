COMMENT =	add diagnostic information to pytest's output

MODPY_EGG_VERSION =	0.2.1

DISTNAME =	pytest-astropy-header-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/astropy/pytest-astropy-header

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVOR =	python3
FLAVORS =	python3

BUILD_DEPENDS =	devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =	devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
