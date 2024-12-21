COMMENT =		snuggs are s-expressions for numpy

MODPY_DISTV =	1.4.7
DISTNAME =		snuggs-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		6

MAINTAINER =		Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =		devel/py-parsing \
			devel/py-click \
			math/py-numpy

TEST_DEPENDS =		devel/py-test \
			devel/py-hypothesis

.include <bsd.port.mk>
