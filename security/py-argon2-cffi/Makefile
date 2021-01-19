# $OpenBSD: Makefile,v 1.1.1.1 2021/01/19 05:27:50 daniel Exp $

COMMENT =		argon2 password hashing for Python

MODPY_EGG_VERSION =	20.1.0
DISTNAME =		argon2-cffi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://argon2-cffi.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		argon2 pthread

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS =		devel/py-cffi${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-cffi${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

LIB_DEPENDS =		security/argon2

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR}

TEST_ENV =		PYTHONPATH=${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}/

.include <bsd.port.mk>
