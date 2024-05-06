COMMENT =	argon2 password hashing for Python

# 21.2.0+ moves the CFFI bindings to a separate project
# (argon2-cffi-bindings), and changes PEP517 backend to flit_core
MODPY_EGG_VERSION =	21.1.0
REVISION =	2
DISTNAME =	argon2-cffi-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

HOMEPAGE =	https://argon2-cffi.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =	argon2 pthread

MODULES =	lang/python

FLAVORS =	python3
FLAVOR  =	python3

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

BUILD_DEPENDS =	devel/py-cffi${MODPY_FLAVOR}
RUN_DEPENDS =	devel/py-cffi${MODPY_FLAVOR}

LIB_DEPENDS =	security/argon2

TEST_DEPENDS =	devel/py-hypothesis${MODPY_FLAVOR}

.include <bsd.port.mk>
