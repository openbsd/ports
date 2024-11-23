COMMENT=	fast implementation of cached properties

MODPY_EGG_VERSION=	0.2.0
DISTNAME=	propcache-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/aio-libs/propcache
HOMEPAGE=	https://propcache.aio-libs.org/en/stable/

# Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	sysutils/py-expandvars${MODPY_FLAVOR} \
		lang/cython${MODPY_FLAVOR}

# tests of C extension are failing (can't find propcache._helpers_c module)
TEST_DEPENDS=	devel/py-covdefaults${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
