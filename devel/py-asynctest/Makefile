COMMENT=	enhance unittest with features to test asyncio libraries

MODPY_DISTV=	0.13.0
DISTNAME=	asynctest-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

# https://github.com/Martiusweb/asynctest
HOMEPAGE=	http://asynctest.readthedocs.org/

# Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# AttributeError: module 'asyncio' has no attribute 'coroutine'
NO_TEST=	Yes

.include <bsd.port.mk>
