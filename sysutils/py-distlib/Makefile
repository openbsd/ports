COMMENT=	distribution utilities

MODPY_DISTV=	0.4.0
DISTNAME=	distlib-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

# https://github.com/pypa/distlib
HOMEPAGE=	https://distlib.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# various networks tests fail with PORTS_PRIVSEP
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
