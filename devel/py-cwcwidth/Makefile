COMMENT=	Oython bindings for C wc(s)width

MODPY_DISTV=	0.1.9
DISTNAME=	cwcwidth-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/sebastinas/cwcwidth
HOMEPAGE=	https://cwcwidth.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	lang/cython
TEST_DEPENDS=	devel/py-test-cov

.include <bsd.port.mk>
