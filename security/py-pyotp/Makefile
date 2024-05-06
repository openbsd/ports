COMMENT=	Python library for one-time passwords

MODPY_EGG_VERSION=	2.9.0

DISTNAME=	pyotp-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	security

# https://github.com/pyotp/pyotp
HOMEPAGE=	https://pyauth.github.io/pyotp/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes

MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= test.py

FLAVOR=		python3
FLAVORS=	python3

.include <bsd.port.mk>
