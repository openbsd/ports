COMMENT =		fast numerical expression evaluator for NumPy

MODPY_DISTV =	2.8.4
DISTNAME =		numexpr-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		1

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		m pthread ${MODPY_WANTLIB} ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_TEST_DIR=		${WRKSRC}/build/lib*

RUN_DEPENDS =		math/py-numpy \
			sysutils/py-packaging
BUILD_DEPENDS =		${RUN_DEPENDS} \
			math/py-oldest-supported-numpy

.include <bsd.port.mk>
