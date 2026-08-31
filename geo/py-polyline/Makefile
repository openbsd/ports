COMMENT =		Python implementation of Google's polyline format

# XXX: superset (not yet imported) needs < 3
MODPY_DISTV =		2.0.4
DISTNAME =		polyline-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		geo

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

PORTHOME =		${WRKDIR}
TEST_DEPENDS =		devel/py-test-cov \
			graphics/py-Pillow \
			math/py-numpy

.include <bsd.port.mk>
