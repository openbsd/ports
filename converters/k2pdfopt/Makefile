COMMENT =	optimizes PDF/DJVU files for mobile e-readers

V =		2.55
DISTNAME =	k2pdfopt_v${V}_src
PKGNAME =	k2pdfopt-${V}
SITES =		https://willus.com/k2pdfopt/src/
EXTRACT_SUFX =	.zip

SITES.deb =	${SITE_DEBIAN:=main/k/k2pdfopt/}
DISTFILES.deb =	k2pdfopt_${V}+ds-2.debian.tar.xz

CATEGORIES =	converters

HOMEPAGE =	https://willus.com/k2pdfopt/
MAINTAINER =	Caspar Schutijser <caspar@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

WANTLIB += c djvulibre freetype gsl gslcblas gumbo jasper jbig2dec
WANTLIB += jpeg lcms leptonica m mupdf png pthread z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS +=	devel/gsl \
		graphics/djvulibre \
		graphics/jasper \
		graphics/jpeg \
		graphics/lcms \
		graphics/leptonica \
		graphics/png \
		textproc/mupdf \
		www/gumbo

RUN_DEPENDS +=	print/ghostscript/gnu

WRKDIST =	${WRKDIR}/k2pdfopt_v${V}

FIX_CRLF_FILES =	`find . -type f`

post-install:
	${INSTALL_MAN} ${WRKDIR}/debian/k2pdfopt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
