COMMENT=	functools like those found in stdlib

MODPY_EGG_VERSION=	4.1.0
DISTNAME=	jaraco_functools-${MODPY_EGG_VERSION}
PKGNAME=	py-jaraco-functools-${MODPY_EGG_VERSION}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jaraco/jaraco.functools

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-more-itertools${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-jaraco-classes${MODPY_FLAVOR}

.include <bsd.port.mk>
