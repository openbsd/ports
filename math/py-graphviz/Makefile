COMMENT =		simple Python interface for Graphviz

MODPY_EGG_VERSION =	0.14.1
DISTNAME =		graphviz-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		5

CATEGORIES =		math

# MIT
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.zip
MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			math/graphviz

.include <bsd.port.mk>
