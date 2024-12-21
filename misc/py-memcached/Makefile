COMMENT=	Python interface to memcached

MODPY_DISTV=	1.62
DISTNAME=	python-memcached-${MODPY_DISTV}
PKGNAME=	py-memcached-${MODPY_DISTV}
CATEGORIES=	misc
REVISION=	1

HOMEPAGE=	https://github.com/linsomniac/python-memcached

# Python
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# tests/__init__.py, tests/utils.py missing from pypi distribution
NO_TEST=	Yes

.include <bsd.port.mk>
