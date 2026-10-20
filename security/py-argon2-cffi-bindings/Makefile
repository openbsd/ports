COMMENT=	argon2 password hashing for Python

MODPY_DISTV=	26.1.0
DISTNAME=	argon2_cffi_bindings-${MODPY_DISTV}
PKGNAME=	py-argon2-cffi-bindings-${MODPY_DISTV}

CATEGORIES=	security

HOMEPAGE=	https://github.com/hynek/argon2-cffi-bindings

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	argon2 pthread

MODULES=	lang/python
MODPY_PYBUILD=	scikit-build-core
MODPY_PI=	Yes

MAKE_ENV=	ARGON2_CFFI_USE_SYSTEM=1 \
		CPPFLAGS=-I/usr/local/include

BUILD_DEPENDS=	devel/py-cffi \
		devel/py-setuptools_scm
RUN_DEPENDS=	devel/py-cffi

LIB_DEPENDS=	security/argon2

TEST_DEPENDS=	devel/py-hypothesis

.include <bsd.port.mk>
