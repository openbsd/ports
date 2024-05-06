COMMENT=	Python interface to memcached

MODPY_EGG_VERSION= 1.62
DISTNAME=	python-memcached-${MODPY_EGG_VERSION}
PKGNAME=	py-memcached-${MODPY_EGG_VERSION}
CATEGORIES=	misc
REVISION=	0

HOMEPAGE=	https://github.com/linsomniac/python-memcached

# Python
PERMIT_PACKAGE=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python

MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# tests/__init__.py, tests/utils.py missing from pypi distribution
NO_TEST=	Yes

.include <bsd.port.mk>
