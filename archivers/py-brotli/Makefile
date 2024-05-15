COMMENT =		Python bindings for the Brotli compression library

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		Brotli-${MODPY_EGG_VERSION}
PKGNAME =		py-brotli-${MODPY_EGG_VERSION}

CATEGORIES =		archivers

HOMEPAGE =		https://github.com/google/brotli

# MIT
PERMIT_PACKAGE =	Yes

# C++
COMPILER =		base-clang ports-gcc base-gcc

WANTLIB +=		${COMPILER_LIBCXX} m

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	python/

FLAVORS =		python3
FLAVOR =		python3

# Tests aren't included in 1.0.9 tarball (even the github tarball,
# although they are in the repo?!), but can be copied in (tests/ and
# python/tests/).

.include <bsd.port.mk>
