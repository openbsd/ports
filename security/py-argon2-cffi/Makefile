COMMENT =	argon2 password hashing for Python

MODPY_DISTV =	23.1.0
DISTNAME =	argon2_cffi-${MODPY_DISTV}
PKGNAME =	py-argon2-cffi-${MODPY_DISTV}

CATEGORIES =	security

# https://github.com/hynek/argon2-cffi/
HOMEPAGE =	https://argon2-cffi.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	hatch-vcs
MODPY_PI =	Yes

BUILD_DEPENDS =	devel/py-hatch-fancy-pypi-readme
RUN_DEPENDS =	security/py-argon2-cffi-bindings

# self TDEP required for checks in tests/test_packaging.py
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-hypothesis \

.include <bsd.port.mk>
