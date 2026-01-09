COMMENT=	functools like those found in stdlib

MODPY_DISTV=	4.4.0
DISTNAME=	jaraco_functools-${MODPY_DISTV}
PKGNAME=	py-jaraco-functools-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jaraco/jaraco.functools

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

BUILD_DEPENDS=	misc/py-coherent.licensed
RUN_DEPENDS=	devel/py-more-itertools
TEST_DEPENDS=	devel/py-jaraco-classes

.include <bsd.port.mk>
