COMMENT=	Python Sorted Container Types

MODPY_DISTV=	2.4.0
REVISION=	5
DISTNAME=	sortedcontainers-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/grantjenks/python-sortedcontainers
HOMEPAGE=	https://www.grantjenks.com/docs/sortedcontainers/

# Apache v2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes

MODPY_PYBUILD=	setuptools

# PyPI tarball doesn't currently include tests
# https://github.com/grantjenks/python-sortedcontainers/pull/130

.include <bsd.port.mk>
