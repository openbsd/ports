COMMENT =	pytest plugin for filtering based on sub-packages

MODPY_EGG_VERSION =	0.1.1

DISTNAME =	pytest-filter-subpackage-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/astropy/pytest-filter-subpackage

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
