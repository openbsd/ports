COMMENT=	compatibility layer between Python 2 and Python 3

MODPY_EGG_VERSION=	1.0.0
DISTNAME=	future-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

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

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
