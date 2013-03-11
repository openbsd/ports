# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:44 espie Exp $

COMMENT=	SWF manipulation and generation utilities

DISTNAME=	swftools-0.9.1
REVISION=	1
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.swftools.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c fftw3 freetype jpeg m mp3lame stdc++ ungif z

LIB_DEPENDS=	audio/lame \
		graphics/jpeg \
		graphics/libungif \
		math/fftw3

VMEM_WARNING=	Yes

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
