COMMENT=	time and date handling utility functions from netcdf4-python

MODPY_DISTV=	1.6.5
DISTNAME=	cftime-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	math

HOMEPAGE=	https://unidata.github.io/cftime/

MAINTAINER=	Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

BUILD_DEPENDS=	lang/cython \
		math/py-numpy

RUN_DEPENDS=	lang/cython \
		math/netcdf

TEST_DEPENDS=	devel/py-test \
		devel/py-test-cov \
		security/py-cryptography \
		security/py-openssl

.include <bsd.port.mk>
