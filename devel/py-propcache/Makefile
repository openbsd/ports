COMMENT=	fast implementation of cached properties

MODPY_DISTV=	0.5.2
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

# because we patched to use older setuptools (v82+ for version = attr:)
pre-configure:
	sed -i 's,= attr: propcache.__version__.*,= ${MODPY_DISTV},' \
		${WRKSRC}/setup.cfg

.include <bsd.port.mk>
