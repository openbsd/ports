COMMENT =		compute distance between texts

MODPY_EGG_VERSION =	4.2.0
DISTNAME =		textdistance-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>
