COMMENT =		convert rst to ansi-decorated console output

MODPY_EGG_VERSION =	0.1.5
DISTNAME =		rst2ansi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc
REVISION =		0

# MIT
PERMIT_PACKAGE = 	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# no tests in pypi package
NO_TEST =		Yes

RUN_DEPENDS =		textproc/py-docutils${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
