COMMENT =	Mox is a mock object framework for Python

MODPY_DISTV =	1.1.0
DISTNAME =	mox3-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
REVISION =	9

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

BUILD_DEPENDS =	devel/py-pbr

RUN_DEPENDS =	devel/py-fixtures \
		devel/py-pbr

# some tests run, some have problems
TEST_DEPENDS =	devel/py-coverage \
		devel/py-extras \
		devel/py-fixtures \
		devel/py-six \
		devel/py-testtools

.include <bsd.port.mk>
