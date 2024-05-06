COMMENT =		cffi-based cairo bindings for Python

MODPY_EGG_VERSION =	1.4.0
DISTNAME =		cairocffi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://github.com/Kozea/cairocffi

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-cffi${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_TEST_DIR =	${WRKSRC}/cairocffi
TEST_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			print/py-pikepdf${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
