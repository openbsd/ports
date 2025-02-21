COMMENT=	create PDFs from markdown or HTML

# 63.0+: tinyhtml5 2.0.0+ is now needed, instead of html5lib
MODPY_DISTV=	62.3
DISTNAME=	weasyprint-${MODPY_DISTV}
REVISION=	1

CATEGORIES=	print

HOMEPAGE=	https://weasyprint.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes
MODPY_TEST_DIR=	${WRKSRC}/tests

RUN_DEPENDS=	devel/pango \
		devel/py-cffi \
		devel/py-html5lib \
		archivers/py-zopfli \
		print/py-fonttools \
		print/py-pydyf>=0.10.0 \
		textproc/py-tinycss2 \
		textproc/py-cssselect2 \
		textproc/py-pyphen \
		graphics/py-Pillow

TEST_DEPENDS=	devel/py-test-flake8 \
		devel/py-test-isort \
		devel/py-test-xdist \
		print/ghostscript/gnu

.include <bsd.port.mk>
