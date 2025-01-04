COMMENT=	fast implementation of cached properties

MODPY_DISTV=	0.2.1
DISTNAME=	propcache-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

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

TEST_DEPENDS=	devel/py-covdefaults \
		devel/py-test-codspeed \
		devel/py-test-cov \
		devel/py-test-xdist

# test needs "make fake"
MODPY_TEST_LINK_SO= Yes

pre-test:
	ln -fs src/propcache ${WRKSRC}/

.include <bsd.port.mk>
