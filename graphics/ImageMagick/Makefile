# $OpenBSD: Makefile,v 1.50 2001/04/06 17:33:28 brad Exp $

COMMENT=	"display and manipulate images under X11"

DISTNAME=	ImageMagick-5.2.9
CATEGORIES=     graphics
NEED_VERSION=	1.384
MASTER_SITES=	ftp://ftp.dqc.org/pub/brad/source/

HOMEPAGE=	http://www.simplesystems.org/ImageMagick/

LIB_DEPENDS=	bz2.10::archivers/bzip2 \
		jbig.1.2::graphics/jbigkit \
		mpeg.13::graphics/mpeg-lib \
		png.1::graphics/png \
		tiff.35::graphics/tiff \
		ttf.1.3::print/freetype \
		xml2.5::textproc/libxml
BUILD_DEPENDS=	fig2dev:transfig-*:print/transfig \
		picttoppm:netpbm-*:graphics/netpbm
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
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/freetype" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
