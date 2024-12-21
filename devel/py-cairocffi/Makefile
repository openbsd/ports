COMMENT =		cffi-based cairo bindings for Python

MODPY_DISTV =	1.4.0
DISTNAME =		cairocffi-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://github.com/Kozea/cairocffi

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-cffi
BUILD_DEPENDS =		${RUN_DEPENDS}

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_TEST_DIR =	${WRKSRC}/cairocffi
TEST_DEPENDS =		math/py-numpy \
			print/py-pikepdf

.include <bsd.port.mk>
