COMMENT=	headers for interoperability between C++ and Python

MODPY_DISTV=	3.0.1
DISTNAME=	pybind11-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

EPOCH=		0

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	scikit-build-core
MODPY_PI=	Yes

MODPY_TEST_DIR= ${WRKSRC}/build/tests
MODPY_PYTEST_ARGS= ../../tests

pre-test:
	cd ${WRKSRC}; \
		mkdir -p build; \
		cd build; \
		cmake ..; \
		make -j${MAKE_JOBS}

.include <bsd.port.mk>
