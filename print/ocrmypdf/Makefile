COMMENT=	add an OCR text layer to scanned PDF files

MODPY_DISTV=	 16.7.0
# standalone; no py- prefix
DISTNAME=	ocrmypdf-${MODPY_DISTV}

CATEGORIES=	print

# https://github.com/ocrmypdf/OCRmyPDF
HOMEPAGE=	https://ocrmypdf.readthedocs.io/

# MPL-2.0
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

# python deps:
RUN_DEPENDS=	graphics/py-Pillow \
		textproc/py-coloredlogs \
		devel/py-deprecation \
		graphics/img2pdf \
		sysutils/py-packaging \
		textproc/py-pdfminer \
		print/py-pikepdf \
		devel/py-pluggy \
		print/py-reportlab \
		devel/py-rich \
		devel/py-tqdm

# other deps
# can also use jbig2enc, not in ports
RUN_DEPENDS +=	graphics/tesseract/tesseract \
		graphics/tesseract/tessdata,-osd \
		graphics/pngquant \
		print/ghostscript/gnu \
		print/unpaper

TEST_DEPENDS=	devel/py-test-xdist \
		devel/py-hypothesis

post-install:
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/share/bash-completion/completions \
	    ${PREFIX}/share/fish/vendor_completions.d
	${INSTALL_DATA} ${WRKSRC}/misc/completion/ocrmypdf.bash \
	    ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${WRKSRC}/misc/completion/ocrmypdf.fish \
	    ${PREFIX}/share/fish/vendor_completions.d

.include <bsd.port.mk>
