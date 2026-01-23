COMMENT=	reference implementation for Python's "wheel" package format

MODPY_DISTV=	0.46.3
DISTNAME=	wheel-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes

# This port is a BDEP of most py-* ports so must have minimal deps and
# cannot use MODPY_PYBUILD. flit_core and installer are OK because they
# have their own bootstrap mechanisms, and packaging only uses flit_core
# and installer.
BUILD_DEPENDS=	devel/py-installer \
		devel/py-flit_core \
		sysutils/py-packaging
RUN_DEPENDS=	sysutils/py-packaging

MODPY_PYTEST_ARGS= tests
TEST_DEPENDS=	devel/py-coverage \
		devel/py-flit \
		devel/py-test-cov \
		devel/py-setuptools

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}; \
	${_MODPY_RUNBIN} -m installer -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
