COMMENT =		Python bindings for the Brotli compression library

MODPY_DISTV =	1.1.0
DISTNAME =		Brotli-${MODPY_DISTV}
PKGNAME =		py-brotli-${MODPY_DISTV}
REVISION =		0

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

# Tests aren't included in 1.0.9 tarball (even the github tarball,
# although they are in the repo?!), but can be copied in (tests/ and
# python/tests/).

.include <bsd.port.mk>
