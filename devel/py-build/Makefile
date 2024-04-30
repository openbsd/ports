COMMENT=	simple, correct PEP 517 build frontend

MODPY_EGG_VERSION=	1.2.1

DISTNAME=	build-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://pypa-build.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes

# contains tests, but not clear how to run
NO_TEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

BUILD_DEPENDS=	devel/py-installer${MODPY_FLAVOR} \
		devel/py-flit_core${MODPY_FLAVOR} \
		devel/py-wheel${MODPY_FLAVOR} \
		${RUN_DEPENDS}

RUN_DEPENDS=	devel/py-pyproject_hooks${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		textproc/py-tomli${MODPY_FLAVOR}

# point to the copy of py-build in WRKSRC for a self-hosting build
# replicate most of MODPY_PYBUILD steps because we can't use it directly
do-build:
	cd ${WRKSRC} && PYTHONPATH=${WRKSRC}/src ${MODPY_BIN} \
	    -sBm build -w --no-isolation

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}; \
	${_MODPY_RUNBIN} -m installer -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
