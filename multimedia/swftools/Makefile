# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:58 sthen Exp $

BROKEN-hppa =	ICE/double-free/cc1(30516) in malloc(): error: recursive call 
COMMENT=	SWF manipulation and generation utilities

DISTNAME=	swftools-0.9.1
REVISION=	5
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.swftools.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c fftw3 freetype gif jpeg m mp3lame pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	audio/lame \
		graphics/jpeg \
		graphics/giflib \
		math/fftw3

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_zzip_zzip_file_open=no \
		ac_cv_lib_pdf_PDF_open_file=no \
		ac_cv_header_zzip_lib_h=no \
		ac_cv_header_pdflib_h=no

NO_TEST=	Yes

.include <bsd.port.mk>
