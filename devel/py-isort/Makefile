COMMENT=	Python utility / library to sort Python imports

MODPY_DISTV=	6.0.0
DISTNAME=	isort-${MODPY_DISTV}
PKGNAME=	py-isort-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/PyCQA/isort

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

MODPY_PYTEST_ARGS= \
		--ignore tests/integration/test_hypothesmith.py \
		--ignore tests/unit/test_pylama_isort.py

TEST_DEPENDS=	${BUILD_PKGPATH} \
		devel/py-test-benchmark \
		devel/py-test-mock \
		devel/py-hypothesis \
		textproc/py-black \
		textproc/py-toml

.include <bsd.port.mk>
