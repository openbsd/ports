COMMENT=	time and date handling utility functions from netcdf4-python

MODPY_EGG_VERSION= 	1.6.3
DISTNAME=		cftime-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		math

HOMEPAGE=		https://unidata.github.io/cftime/

MAINTAINER=		Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI=		Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS=		lang/cython${MODPY_FLAVOR} \
			math/py-oldest-supported-numpy${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

RUN_DEPENDS=		lang/cython${MODPY_FLAVOR} \
			math/netcdf

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR}

.include <bsd.port.mk>
