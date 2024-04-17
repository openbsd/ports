COMMENT=	add an OCR text layer to scanned PDF files

MODPY_EGG_VERSION=  16.2.0
# standalone; no py- prefix
DISTNAME=	ocrmypdf-${MODPY_EGG_VERSION}

CATEGORIES=	print

# https://github.com/ocrmypdf/OCRmyPDF
HOMEPAGE=	https://ocrmypdf.readthedocs.io/

# MPL-2.0
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

# python deps:
RUN_DEPENDS=	graphics/py-Pillow${MODPY_FLAVOR} \
		textproc/py-coloredlogs${MODPY_FLAVOR} \
		devel/py-deprecation${MODPY_FLAVOR} \
		graphics/img2pdf \
		sysutils/py-packaging${MODPY_FLAVOR} \
		textproc/py-pdfminer${MODPY_FLAVOR} \
		print/py-pikepdf${MODPY_FLAVOR} \
		devel/py-pluggy${MODPY_FLAVOR} \
		print/py-reportlab${MODPY_FLAVOR} \
		devel/py-rich${MODPY_FLAVOR} \
		devel/py-tqdm${MODPY_FLAVOR}

# other deps
# can also use jbig2enc, not in ports
RUN_DEPENDS +=	graphics/tesseract/tesseract \
		graphics/tesseract/tessdata,-osd \
		graphics/pngquant \
		print/ghostscript/gnu \
		print/unpaper

TEST_DEPENDS=	devel/py-test-xdist${MODPY_FLAVOR} \
		devel/py-hypothesis${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/share/bash-completion/completions \
	    ${PREFIX}/share/fish/vendor_completions.d
	${INSTALL_DATA} ${WRKSRC}/misc/completion/ocrmypdf.bash \
	    ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${WRKSRC}/misc/completion/ocrmypdf.fish \
	    ${PREFIX}/share/fish/vendor_completions.d

.include <bsd.port.mk>
