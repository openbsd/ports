COMMENT =		Python bindings to the Brotli compression library

MODPY_EGG_VERSION =	1.1.0.0
DISTNAME =		brotlicffi-${MODPY_EGG_VERSION}
PKGNAME =		py-brotlicffi-${MODPY_EGG_VERSION}
CATEGORIES =		archivers

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} brotlidec brotlienc pthread

COMPILER =		base-clang ports-gcc

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

MAKE_ENV =		USE_SHARED_BROTLI=1

LIB_DEPENDS =		archivers/brotli
RUN_DEPENDS =		devel/py-cffi${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}

# PyPI release hasn't got test data
# See: https://github.com/python-hyper/brotlicffi/issues/191
NO_TEST =		Yes

.include <bsd.port.mk>
