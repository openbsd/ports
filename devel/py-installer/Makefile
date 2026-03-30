COMMENT=	low-level library to install Python wheel distributions

MODPY_DISTV=	1.0.0
GH_ACCOUNT=	pypa
GH_PROJECT=	installer
GH_TAGNAME=	${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://installer.readthedocs.io/en/stable/

# BSD
PERMIT_PACKAGE= Yes

MODULES=	lang/python
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
