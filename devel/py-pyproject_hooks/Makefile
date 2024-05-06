COMMENT=	wrappers to call pyproject.toml-based build backend hooks

MODPY_EGG_VERSION=	1.0.0
EPOCH=		0

DISTNAME=	pyproject_hooks-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# https://github.com/pypa/pyproject-hooks
# https://pyproject-hooks.readthedocs.io/en/latest/changelog.html
HOMEPAGE=	https://pyproject-hooks.readthedocs.io/

# MIT
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PI=	Yes

FLAVOR=		python3
FLAVORS=	python3

RUN_DEPENDS=	textproc/py-tomli${MODPY_FLAVOR}

MODPY_PYTEST=	Yes
TEST_DEPENDS=	devel/py-testpath${MODPY_FLAVOR}
PORTHOME=	${WRKDIR}

# this port is used as a BDEP by python.port.mk for ports using
# MODPY_PYBUILD, so cannot use MODPY_PYBUILD itself.

BUILD_DEPENDS+=	devel/py-flit_core${MODPY_FLAVOR} \
		devel/py-installer${MODPY_FLAVOR}

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
