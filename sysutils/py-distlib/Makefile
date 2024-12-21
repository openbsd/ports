COMMENT=	distribution utilities

MODPY_DISTV=	0.3.7
DISTNAME=	distlib-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

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

.include <bsd.port.mk>
