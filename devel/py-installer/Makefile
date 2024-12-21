COMMENT=	low-level library to install Python wheel distributions

MODPY_DISTV=	0.7.0

DISTNAME=	installer-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	devel

HOMEPAGE=	https://installer.readthedocs.io/en/stable/

# BSD
PERMIT_PACKAGE= Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYTEST=	Yes

# This port is a BDEP of most py-* ports so must have minimal deps and
# cannot use MODPY_PYBUILD. flit_core is OK because it has its own
# bootstrap method to install from the wheel.
BUILD_DEPENDS=	devel/py-flit_core

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	PYTHONPATH=${WRKSRC}/src ${MODPY_BIN} -m installer \
	    -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
