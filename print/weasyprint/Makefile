COMMENT =		create PDFs from markdown or HTML

MODPY_EGG_VERSION =	61.2
DISTNAME =		weasyprint-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		print

HOMEPAGE =		https://weasyprint.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		flit_core
MODPY_PI =		Yes
MODPY_TEST_DIR =	${WRKSRC}/tests

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/pango \
			devel/py-cffi${MODPY_FLAVOR} \
			devel/py-html5lib${MODPY_FLAVOR} \
			archivers/py-zopfli${MODPY_FLAVOR} \
			print/py-fonttools${MODPY_FLAVOR} \
			print/py-pydyf${MODPY_FLAVOR}>=0.5.0 \
			textproc/py-tinycss2${MODPY_FLAVOR} \
			textproc/py-cssselect2${MODPY_FLAVOR} \
			textproc/py-pyphen${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR}

TEST_DEPENDS +=		devel/py-test-flake8${MODPY_FLAVOR} \
			devel/py-test-isort${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			print/ghostscript/gnu,no_x11

.include <bsd.port.mk>
