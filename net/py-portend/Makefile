COMMENT =		monitor TCP ports for bound or unbound states

MODPY_EGG_VERSION =	3.2.0
DISTNAME =		portend-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://github.com/jaraco/portend

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/py-tempora${MODPY_FLAVOR}>=1.8

NO_TEST =		Yes

.include <bsd.port.mk>
