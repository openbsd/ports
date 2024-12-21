COMMENT =		library to manipulate font files from for Python

MODPY_DISTV =	4.39.3
DISTNAME =		fonttools-${MODPY_DISTV}
PKGNAME =		py-fonttools-${MODPY_DISTV}
EXTRACT_SUFX =		.zip
REVISION =		1

CATEGORIES =		print

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes
MODPY_TEST_DIR =	${WRKSRC}/Tests

MAKE_ENV +=		FONTTOOLS_MANPATH="man"

RUN_DEPENDS +=		archivers/py-brotli \
			archivers/py-zopfli

BUILD_DEPENDS +=	lang/cython
# also needs a port of https://pyfilesystem.readthedocs.io
TEST_DEPENDS +=		textproc/py-lxml

.include <bsd.port.mk>
