COMMENT =		tool for installing Python packages

MODPY_EGG_VERSION =	22.3.1
REVISION =		0
DISTNAME =		pip-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://pip.pypa.io/en/stable/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
# can't use MODPY_PYBUILD unless this loop is broken:
# py-build -> py-packaging -> py-parsing -> py-pip -> py-build
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

# No test suites in pypi tarball
NO_TEST =		Yes

.include <bsd.port.mk>
