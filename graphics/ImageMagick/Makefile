# $OpenBSD: Makefile,v 1.40 2000/08/08 19:01:37 brad Exp $

DISTNAME=	ImageMagick-5.2.1
CATEGORIES=     graphics
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.wizards.dupont.com/pub/ImageMagick/ \
		ftp://ftp.u-aizu.ac.jp/pub/graphics/image/ImageMagick/ \
		ftp://ftp.fifi.org/pub/ImageMagick/ \
		ftp://gd.tuwien.ac.at/pub/graphics/ImageMagick/ \
		ftp://ftp.ms.mff.cuni.cz/MIRRORS/ftp.wizards.dupont.com/pub/ImageMagick/ \
		ftp://ftp.oce.nl/pub/Internet/audio+video/ImageMagick/

HOMEPAGE=	http://www.wizards.dupont.com/cristy/ImageMagick.html

LIB_DEPENDS=	bz2.10::archivers/bzip2 \
		jbig.1.2::graphics/jbigkit \
		jpeg.62::graphics/jpeg \
		mpeg.13::graphics/mpeg-lib \
		png.1::graphics/png \
		tiff.35::graphics/tiff \
		ttf.1.3::print/freetype \
		xml.4::textproc/libxml
BUILD_DEPENDS=	fig2dev::print/transfig \
		gs::print/ghostscript/gnu \
		picttoppm::graphics/netpbm
RUN_DEPENDS=	fig2dev::print/transfig \
		gs::print/ghostscript/gnu \
		picttoppm::graphics/netpbm

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --enable-lzw --enable-16bit-pixel \
		 --without-perl --without-modules --without-dps \
		 --without-fpx --without-hdf --without-lcms
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
