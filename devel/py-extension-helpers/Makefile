COMMENT=	build-time package to simplify C/Cython extensions

MODPY_DISTV=	1.4.0
DISTNAME=	extension_helpers-${MODPY_DISTV}
PKGNAME=	py-extension-helpers-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://extension-helpers.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

MODPY_PYTEST_ARGS= extension_helpers/tests
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
