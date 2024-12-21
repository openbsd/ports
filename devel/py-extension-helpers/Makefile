COMMENT=	build-time package to simplify C/Cython extensions

MODPY_DISTV=	1.1.1

DISTNAME=	extension-helpers-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://extension-helpers.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
MODPY_PYTEST_ARGS= extension_helpers/tests
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
