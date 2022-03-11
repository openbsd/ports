COMMENT =		Python bindings for the Brotli compression library

MODPY_EGG_VERSION =	1.0.9
DISTNAME =		Brotli-${MODPY_EGG_VERSION}
PKGNAME =		py-brotli-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		archivers

MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

HOMEPAGE =		https://github.com/google/brotli

# MIT
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.zip

# C++
COMPILER =		base-clang ports-gcc base-gcc

WANTLIB += 		${COMPILER_LIBCXX} m

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	python/

FLAVORS =		python3
FLAVOR =		python3

# Tests aren't included in 1.0.9 tarball, but can be copied in
TESTLIBDIR =		${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}/
TEST_ENV +=		PYTHONPATH=${TESTLIBDIR}

.include <bsd.port.mk>
