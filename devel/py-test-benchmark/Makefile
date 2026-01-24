COMMENT=	pytest fixture for benchmarking code

MODPY_DISTV=	5.2.3
DISTNAME=	pytest_benchmark-${MODPY_DISTV}
PKGNAME=	py-test-benchmark-${MODPY_DISTV}
CATEGORIES=	devel

HOMEPAGE=	https://pytest-benchmark.readthedocs.io/en/stable/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# disable tests relating to benchmark.weave which needs aspectlib
# (not yet in ports)
MODPY_PYTEST_ARGS= -v \
		   --ignore tests/test_with_weaver.py \
		   --ignore tests/test_with_testcase.py

RUN_DEPENDS=	devel/py-test \
		sysutils/py-cpuinfo
TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH} \
		devel/py-freezegun \
		devel/mercurial \
		graphics/py-pygal \
		textproc/py-elasticsearch

.include <bsd.port.mk>
