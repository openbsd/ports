COMMENT =		library to manipulate font files from for Python

MODPY_EGG_VERSION =	4.39.3
DISTNAME =		fonttools-${MODPY_EGG_VERSION}
PKGNAME =		py-fonttools-${MODPY_EGG_VERSION}
EXTRACT_SUFX =		.zip
REVISION =		0

CATEGORIES =		print

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes
MODPY_TEST_DIR =	${WRKSRC}/Tests

FLAVORS =		python3
FLAVOR =		python3

MAKE_ENV +=		FONTTOOLS_MANPATH="man"

RUN_DEPENDS +=		archivers/py-brotli${MODPY_FLAVOR} \
			archivers/py-zopfli${MODPY_FLAVOR}

BUILD_DEPENDS +=	lang/cython${MODPY_FLAVOR}
# also needs a port of https://pyfilesystem.readthedocs.io
TEST_DEPENDS +=		textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
