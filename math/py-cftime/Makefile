# $OpenBSD: Makefile,v 1.9 2020/07/23 18:22:13 martin Exp $

COMMENT=	time and date handling utility functions from netcdf4-python

MODPY_EGG_VERSION= 	1.2.1
DISTNAME=		cftime-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		math

HOMEPAGE=		https://unidata.github.io/cftime/

MAINTAINER=		Martin Reindl <martin@catai.org>

# BSD-like, some parts GNU
PERMIT_PACKAGE=		Yes

WANTLIB=		pthread ${MODPY_WANTLIB}

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes
MODPY_PYTEST=		Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		lang/cython${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

RUN_DEPENDS=		lang/cython${MODPY_FLAVOR} \
			math/netcdf

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR}

# not needed for python3, also messes with relative imports in tests
pre-test:
	rm -f ${WRKSRC}/cftime/__init__.py

.include <bsd.port.mk>
