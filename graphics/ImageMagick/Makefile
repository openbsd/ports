# $OpenBSD: Makefile,v 1.55 2002/08/04 21:04:48 brad Exp $

COMMENT=	"display and manipulate images under X11"

DISTNAME=	ImageMagick-5.2.9
CATEGORIES=     graphics
MASTER_SITES=	ftp://openbsd.comstyle.com/pub/brad/source/ \
		ftp://ftp.dqc.org/pub/brad/source/

HOMEPAGE=	http://www.simplesystems.org/ImageMagick/

LIB_DEPENDS=	bz2.10::archivers/bzip2 \
		jbig.1.2::graphics/jbigkit \
		mpeg.13::graphics/mpeg-lib \
		png.2::graphics/png \
		tiff.35::graphics/tiff \
		ttf.1.3::print/freetype \
		xml2.6::textproc/libxml
BUILD_DEPENDS=	:transfig-*:print/transfig \
		:netpbm-*:graphics/netpbm
RUN_DEPENDS=	${BUILD_DEPENDS}

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --enable-lzw --enable-16bit-pixel \
		 --without-perl --without-modules --without-dps \
		 --without-fpx --without-hdf --without-lcms \
		 --without-ttf --without-wmf --without-threads
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include/freetype -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
