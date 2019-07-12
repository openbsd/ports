# $OpenBSD: Makefile,v 1.6 2019/07/12 20:43:49 sthen Exp $

BROKEN =	has locally modified copied of MuPDF files; some of these have changed API in 1.12.0 causing breakage

COMMENT =	optimizes PDF/DJVU files for mobile e-readers

V =		2.42
DISTNAME =	k2pdfopt_v${V}_src
PKGNAME =	k2pdfopt-${V}
MASTER_SITES =	http://willus.com/k2pdfopt/src/
EXTRACT_SUFX =	.zip
REVISION =	2

CATEGORIES =	converters

HOMEPAGE =	http://willus.com/k2pdfopt/
MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

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
