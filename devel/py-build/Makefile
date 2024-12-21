COMMENT=	simple, correct PEP 517 build frontend

MODPY_DISTV=	1.2.2.post1

DISTNAME=	build-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://pypa-build.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes

# contains tests, but not clear how to run
NO_TEST=	Yes

BUILD_DEPENDS=	devel/py-installer \
		devel/py-flit_core \
		devel/py-wheel \
		${RUN_DEPENDS}

RUN_DEPENDS=	devel/py-pyproject_hooks \
		sysutils/py-packaging

# point to the copy of py-build in WRKSRC for a self-hosting build
# replicate most of MODPY_PYBUILD steps because we can't use it directly
do-build:
	cd ${WRKSRC} && PYTHONPATH=${WRKSRC}/src ${MODPY_BIN} \
	    -sBm build -w --no-isolation

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}; \
	${_MODPY_RUNBIN} -m installer -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
