COMMENT=	fast and thorough lazy object proxy

MODPY_DISTV=	1.10.0
DISTNAME=	lazy-object-proxy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	https://python-lazy-object-proxy.readthedocs.org

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

TEST_DEPENDS=	devel/py-test-benchmark

.include <bsd.port.mk>
