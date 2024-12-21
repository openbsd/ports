COMMENT=	reference implementation for Python's "wheel" package format

MODPY_DISTV=	0.45.1
DISTNAME=	wheel-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes

# This port is a BDEP of most py-* ports so must have minimal deps and
# cannot use MODPY_PYBUILD. flit_core and installer are OK because they
# have their own bootstrap mechanisms.
BUILD_DEPENDS=  devel/py-installer \
                devel/py-flit_core

MODPY_PYTEST_ARGS= tests
TEST_DEPENDS=	devel/py-coverage \
		devel/py-flit \
		devel/py-test-cov

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}; \
	${_MODPY_RUNBIN} -m installer -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
