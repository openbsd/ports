COMMENT =		library for arbitrary-precision floating-point arithmetic

MODPY_EGG_VERSION =	1.2.1
DISTNAME =		mpmath-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

HOMEPAGE =		http://mpmath.org/

# New BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST_ARGS =	mpmath

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

.include <bsd.port.mk>
