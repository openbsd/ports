COMMENT=	compatibility layer between Python 2 and Python 3

MODPY_DISTV=	1.0.0
DISTNAME=	future-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# https://github.com/PythonCharmers/python-future
HOMEPAGE=	https://python-future.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
# tests trigger "ImportError: This package should not be accessible on Python 3"
NO_TEST=	Yes

.include <bsd.port.mk>
