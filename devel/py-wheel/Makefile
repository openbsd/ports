COMMENT=	reference implementation for Python's "wheel" package format

MODPY_EGG_VERSION=	0.43.0
DISTNAME=	wheel-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
FLAVORS=	python3
FLAVOR=		python3

# This port is a BDEP of most py-* ports so must have minimal deps and
# cannot use MODPY_PYBUILD. flit_core and installer are OK because they
# have their own bootstrap mechanisms.
BUILD_DEPENDS=  devel/py-installer${MODPY_FLAVOR} \
                devel/py-flit_core${MODPY_FLAVOR}

MODPY_PYTEST_ARGS= tests
TEST_DEPENDS=	devel/py-coverage${MODPY_FLAVOR} \
		devel/py-flit${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR}

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}; \
	${_MODPY_RUNBIN} -m installer -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
