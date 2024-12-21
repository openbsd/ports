COMMENT=	fast implementation of cached properties

MODPY_DISTV=	0.2.0
DISTNAME=	propcache-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# https://github.com/aio-libs/propcache
HOMEPAGE=	https://propcache.aio-libs.org/en/stable/

# Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	sysutils/py-expandvars \
		lang/cython

# tests of C extension are failing (can't find propcache._helpers_c module)
TEST_DEPENDS=	devel/py-covdefaults \
		devel/py-test-cov \
		devel/py-test-xdist

.include <bsd.port.mk>
