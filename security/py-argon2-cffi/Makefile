COMMENT =	argon2 password hashing for Python

# 21.2.0+ moves the CFFI bindings to a separate project
# (argon2-cffi-bindings), and changes PEP517 backend to flit_core
MODPY_DISTV =	21.1.0
REVISION =	3
DISTNAME =	argon2-cffi-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

HOMEPAGE =	https://argon2-cffi.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =	argon2 pthread

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

BUILD_DEPENDS =	devel/py-cffi
RUN_DEPENDS =	devel/py-cffi

LIB_DEPENDS =	security/argon2

TEST_DEPENDS =	devel/py-hypothesis

.include <bsd.port.mk>
