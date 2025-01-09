COMMENT=	test asyncio code with pytest

MODPY_DISTV=	0.25.2
DISTNAME=	pytest_asyncio-${MODPY_DISTV}
PKGNAME=	py-test-asyncio-${MODPY_DISTV}
CATEGORIES=	devel

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

# needs extra dep pytest_trio
MODPY_PYTEST_ARGS=	--ignore tests/trio/test_fixtures.py
# most tests are ok without self-dep, but some require it to be
# installed for pytest --asyncio-mode==strict to work
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-flaky \
		devel/py-hypothesis

RUN_DEPENDS=	devel/py-test

.include <bsd.port.mk>
