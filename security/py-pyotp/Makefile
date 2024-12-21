COMMENT=	Python library for one-time passwords

MODPY_DISTV=	2.9.0

DISTNAME=	pyotp-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	security

# https://github.com/pyotp/pyotp
HOMEPAGE=	https://pyauth.github.io/pyotp/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes

MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= test.py

.include <bsd.port.mk>
