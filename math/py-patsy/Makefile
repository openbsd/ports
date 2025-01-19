COMMENT=	Python package for describing statistical models

MODPY_DISTV=	1.0.1
DISTNAME=	patsy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	math

HOMEPAGE=	https://github.com/pydata/patsy

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	math/py-numpy

TEST_DEPENDS=	devel/py-test-cov \
		math/py-scipy

.include <bsd.port.mk>
