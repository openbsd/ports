COMMENT =	Mox is a mock object framework for Python

MODPY_DISTV =	1.1.0
DISTNAME =	mox3-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
REVISION =	7

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =	devel/py-pbr
RUN_DEPENDS =	devel/py-fixtures \
		devel/py-pbr

# some tests run, some problems
TEST_DEPENDS =	devel/py-fixtures \
		devel/py-testtools \
		devel/py-nose

do-test:
	cd ${WRKSRC}; nosetests

.include <bsd.port.mk>
