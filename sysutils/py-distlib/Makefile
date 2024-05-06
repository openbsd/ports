COMMENT=	distribution utilities

MODPY_EGG_VERSION=	0.3.7
DISTNAME=	distlib-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	sysutils

# https://github.com/pypa/distlib
HOMEPAGE=	https://distlib.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# various networks tests fail with PORTS_PRIVSEP
MODPY_PYTEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
