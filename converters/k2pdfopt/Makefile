# if un-breaking, reenable in ../Makefile
BROKEN =	k2pdfopt uses modified builds of MuPDF, Leptonica, Tesseract; at least some of these have been updated causing mods to fail

# Notes on updating:
# - go to https://www.willus.com/k2pdfopt/k2pdfopt_version.txt;
#   some of the dependencies need modifying by replacing source
#   files with files from XXX_mod in k2pdfopt source; using the
#   above file you can figure out which version of those libs
#   is needed
# - modify the port to:
#   1. fetch those files
#   2. move the files from XXX_mod/somefile to replace the relevant
#      file in the library (you'll also need to figure out where in
#      the library source that file is; they are dumped into the
#      one XXX_mod dir per library)
#   3. replicate the library build process (make them static)
#   4. build k2pdfopt, pointed at the newly built libraries
#
# Alternatively you may get away with removing use of mupdf (there's
# some fallback to ghostscript) and patching use of the libraries;
# debian packaging takes this approach. It's still very fragile though.

COMMENT =	optimizes PDF/DJVU files for mobile e-readers

V =		2.42
DISTNAME =	k2pdfopt_v${V}_src
PKGNAME =	k2pdfopt-${V}
MASTER_SITES =	http://willus.com/k2pdfopt/src/
EXTRACT_SUFX =	.zip
REVISION =	3

CATEGORIES =	converters

HOMEPAGE =	http://willus.com/k2pdfopt/
MAINTAINER =	Paul Irofti <paul@irofti.net>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

WANTLIB +=	${COMPILER_LIBCXX} c freetype jbig2dec jpeg m png z \
		djvulibre jasper lept mupdf openjpeg tesseract

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS +=	textproc/mupdf:patch \
			graphics/leptonica:configure \
			graphics/tesseract/tesseract:patch

LIB_DEPENDS +=	graphics/png \
		graphics/jpeg \
		graphics/jbig2dec \
		graphics/openjpeg \
		textproc/mupdf \
		graphics/djvulibre \
		graphics/leptonica \
		graphics/tesseract/tesseract

RUN_DEPENDS +=	print/ghostscript/gnu

WRKDIST =	${WRKDIR}/k2pdfopt_v${V}

post-extract:
	ln -s ${WRKDIR}/graphics/leptonica/leptonica-* ${WRKSRC}/leptonica
	ln -s ${WRKDIR}/graphics/tesseract/tesseract/tesseract-* \
		${WRKSRC}/tesseract
	ln -s ${WRKDIR}/textproc/mupdf/mupdf-* ${WRKSRC}/mupdf

pre-patch:
	@cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

.include <bsd.port.mk>
