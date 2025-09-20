COMMENT=	create PDFs from markdown or HTML

MODPY_DISTV=	66.0
DISTNAME=	weasyprint-${MODPY_DISTV}

CATEGORIES=	print

HOMEPAGE=	https://weasyprint.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	devel/pango \
		print/py-pydyf>=0.11.0 \
		devel/py-cffi \
		www/py-tinyhtml5 \
		textproc/py-tinycss2 \
		textproc/py-cssselect2 \
		textproc/py-pyphen \
		graphics/py-Pillow \
		print/py-fonttools \
		archivers/py-zopfli

MODPY_TEST_DIR=	${WRKSRC}/tests
TEST_DEPENDS=	devel/py-test-flake8 \
		devel/py-test-isort \
		devel/py-test-xdist \
		print/ghostscript/gnu

.include <bsd.port.mk>
