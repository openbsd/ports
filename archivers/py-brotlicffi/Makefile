COMMENT =		Python bindings to the Brotli compression library

MODPY_DISTV =	1.1.0.0
DISTNAME =		brotlicffi-${MODPY_DISTV}
PKGNAME =		py-brotlicffi-${MODPY_DISTV}
CATEGORIES =		archivers
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} brotlidec brotlienc pthread

COMPILER =		base-clang ports-gcc

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

MAKE_ENV =		USE_SHARED_BROTLI=1

LIB_DEPENDS =		archivers/brotli
RUN_DEPENDS =		devel/py-cffi
BUILD_DEPENDS =		${RUN_DEPENDS}

# PyPI release hasn't got test data
# See: https://github.com/python-hyper/brotlicffi/issues/191
NO_TEST =		Yes

.include <bsd.port.mk>
