COMMENT=	fast and thorough lazy object proxy

MODPY_DISTV=	1.12.0
DISTNAME=	lazy_object_proxy-${MODPY_DISTV}
PKGNAME=	py-lazy-object-proxy-${MODPY_DISTV}
CATEGORIES=	devel
REVISION=	1

HOMEPAGE=	https://python-lazy-object-proxy.readthedocs.org

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-test-benchmark

.include <bsd.port.mk>
