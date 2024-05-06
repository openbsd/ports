COMMENT=	Python Sorted Container Types

MODPY_EGG_VERSION=	2.4.0
REVISION=	4
DISTNAME=	sortedcontainers-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/grantjenks/python-sortedcontainers
HOMEPAGE=	https://www.grantjenks.com/docs/sortedcontainers/

# Apache v2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODPY_PYBUILD=	setuptools

# PyPI tarball doesn't currently include tests
# https://github.com/grantjenks/python-sortedcontainers/pull/130

.include <bsd.port.mk>
