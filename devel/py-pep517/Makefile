COMMENT=	wrappers to build Python packages using PEP 517 hooks

# can probably be removed in favour of pyproject-hooks?
MODPY_EGG_VERSION=	0.13.1

DISTNAME=	pep517-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# https://github.com/pypa/pep517
HOMEPAGE=	https://pep517.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PI=	Yes

FLAVOR=		python3
FLAVORS=	python3

# until moving to python 3.11
RUN_DEPENDS=	textproc/py-tomli${MODPY_FLAVOR}

# has some network tests
MODPY_PYTEST=	Yes
TEST_DEPENDS=	devel/py-pip${MODPY_FLAVOR} \
		devel/py-testpath${MODPY_FLAVOR}
PORTHOME=	${WRKDIR}

# this port is used as a BDEP by python.port.mk for ports using
# MODPY_PYBUILD, so cannot use MODPY_PYBUILD itself.

BUILD_DEPENDS=	devel/py-flit_core${MODPY_FLAVOR} \
		devel/py-installer${MODPY_FLAVOR}

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
