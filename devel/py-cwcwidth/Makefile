COMMENT=	Python bindings for C wc(s)width

MODPY_DISTV=	0.1.10
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
MODPY_TEST_LINK_SO= Yes

BUILD_DEPENDS=	lang/cython
TEST_DEPENDS=	devel/py-test-cov

.include <bsd.port.mk>
