COMMENT=	implementation of JSON Schema validation for Python

MODPY_DISTV=	2025.8.26.11
DISTNAME=	trove_classifiers-${MODPY_DISTV}
PKGNAME=	py-trove-classifiers-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/pypa/trove-classifiers

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-calver
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
