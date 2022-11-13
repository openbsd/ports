COMMENT =		fast numerical expression evaluator for NumPy

MODPY_EGG_VERSION =	2.8.3
DISTNAME =		numexpr-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		m pthread ${MODPY_WANTLIB} ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc

MODULES =		lang/python
FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	build/lib.openbsd-${OSREV}-${ARCH}-cpython-${MODPY_MAJORMINOR}

FIX_CRLF_FILES =	pyproject.toml

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
