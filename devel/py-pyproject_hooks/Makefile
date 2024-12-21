COMMENT=	wrappers to call pyproject.toml-based build backend hooks

MODPY_DISTV=	1.2.0
EPOCH=		0

DISTNAME=	pyproject_hooks-${MODPY_DISTV}
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

MODPY_PYTEST=	Yes
TEST_DEPENDS=	devel/py-testpath
PORTHOME=	${WRKDIR}

# this port is used as a BDEP by python.port.mk for ports using
# MODPY_PYBUILD, so cannot use MODPY_PYBUILD itself.

BUILD_DEPENDS+=	devel/py-flit_core \
		devel/py-installer

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
