COMMENT=	PDF creation library for Python

MODPY_DISTV=	2.8.7
GH_ACCOUNT=	py-pdf
GH_PROJECT=	fpdf2
GH_TAGNAME=	${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

# https://github.com/py-pdf/fpdf2
HOMEPAGE=	https://py-pdf.github.io/fpdf2/

# LGPLv3.0 only
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	print/py-fonttools
RUN_DEPENDS=	graphics/py-Pillow \
		textproc/py-defusedxml \
		print/py-fonttools

# requires camelot-py & other deps, tabula-py
MODPY_PYTEST_ARGS=	--ignore test/table/test_table_extraction.py

TEST_DEPENDS=	devel/py-test-cov \
		devel/py-uharfbuzz \
		graphics/py-qrcode

.include <bsd.port.mk>
