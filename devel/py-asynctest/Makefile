COMMENT=	enhance unittest with features to test asyncio libraries

MODPY_EGG_VERSION=	0.13.0
DISTNAME=	asynctest-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# https://github.com/Martiusweb/asynctest
HOMEPAGE=	http://asynctest.readthedocs.org/

# Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# AttributeError: module 'asyncio' has no attribute 'coroutine'
NO_TEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
