# $OpenBSD: Makefile,v 1.33 2000/05/30 10:47:37 espie Exp $

DISTNAME=	ImageMagick-4.2.9
CATEGORIES=     graphics
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://ftp.wizards.dupont.com/pub/ImageMagick/ \
		ftp://ftp.u-aizu.ac.jp/pub/graphics/image/ImageMagick/ \
		ftp://ftp.fifi.org/pub/ImageMagick/ \
		ftp://gd.tuwien.ac.at/pub/graphics/ImageMagick/ \
		ftp://ftp.ms.mff.cuni.cz/MIRRORS/ftp.wizards.dupont.com/pub/ImageMagick/ \
		ftp://ftp.oce.nl/pub/Internet/audio+video/ImageMagick/

HOMEPAGE=	http://www.wizards.dupont.com/cristy/ImageMagick.html

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	bz2.9.5::archivers/bzip2 \
		jbig.1.1::graphics/jbigkit \
		jpeg.62::graphics/jpeg \
		mpeg.13::graphics/mpeg-lib \
		png.1.6::graphics/png \
		tiff.35::graphics/tiff \
		ttf.1.3::print/freetype
BUILD_DEPENDS=	fig2dev::print/transfig \
		gs::print/ghostscript/gnu \
		picttoppm::graphics/netpbm
RUN_DEPENDS=	fig2dev::print/transfig \
		gs::print/ghostscript/gnu \
		picttoppm::graphics/netpbm

#USE_X11=	Yes
GNU_CONFIGURE=	Yes
FAKE=		Yes

CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		--enable-lzw \
		--without-perl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
