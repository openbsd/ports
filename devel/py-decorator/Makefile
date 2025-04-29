COMMENT=	simplify usage of decorators

MODPY_DISTV=	5.2.1
DISTNAME=	decorator-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

HOMEPAGE=	https://github.com/micheles/decorator

CATEGORIES=	devel

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# some test files missing from sdist in 5.2.0
NO_TEST=	Yes
#MODPY_PYTEST_ARGS= tests/*py

.include <bsd.port.mk>
