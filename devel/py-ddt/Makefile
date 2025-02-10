COMMENT=	multiply test cases

MODPY_DISTV=	1.7.2
DISTNAME=	ddt-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# needs aiounittest
MODPY_PYTEST_ARGS= --ignore test/test_async.py

.include <bsd.port.mk>
