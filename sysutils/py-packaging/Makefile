COMMENT=	core utilities for Python packages

MODPY_EGG_VERSION=	23.2

DISTNAME=	packaging-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/pypa/packaging

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYTEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

# This port is a BDEP of most py-* ports so must have minimal deps and
# cannot use MODPY_PYBUILD. flit_core is OK because it has its own
# bootstrap method to install from the wheel, and installer is OK because
# it only depends on flit_core.
BUILD_DEPENDS=	archivers/unzip \
		devel/py-flit_core${MODPY_FLAVOR} \
		devel/py-installer${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-pretend${MODPY_FLAVOR}

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	PYTHONPATH=${WRKSRC}/src ${MODPY_BIN} -m installer \
            -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
