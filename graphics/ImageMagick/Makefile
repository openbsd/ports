# $OpenBSD: Makefile,v 1.19 1999/07/09 23:14:38 brad Exp $

DISTNAME=	ImageMagick-4.2.7
CATEGORIES=     graphics
MASTER_SITES=	ftp://ftp.wizards.dupont.com/pub/ImageMagick/ \
		ftp://ftp.u-aizu.ac.jp/pub/graphics/image/ImageMagick/ \
		ftp://ftp.fifi.org/pub/ImageMagick/ \
		ftp://gd.tuwien.ac.at/pub/graphics/ImageMagick/ \
		ftp://ftp.ms.mff.cuni.cz/MIRRORS/ftp.wizards.dupont.com/pub/ImageMagick/ \
		ftp://ftp.oce.nl/pub/Internet/audio+video/ImageMagick/

HOMEPAGE=	http://www.wizards.dupont.com/cristy/ImageMagick.html

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

BUILD_DEPENDS=	fig2dev:${PORTSDIR}/print/transfig \
		gs:${PORTSDIR}/print/ghostscript5 \
		picttoppm:${PORTSDIR}/graphics/netpbm

LIB_DEPENDS=	bz2.0.9:${PORTSDIR}/archivers/bzip2 \
		jbig.1.0:${PORTSDIR}/graphics/jbigkit \
		jpeg.62:${PORTSDIR}/graphics/jpeg \
		mpeg.1.2:${PORTSDIR}/graphics/mpeg-lib \
		png.1.3:${PORTSDIR}/graphics/png \
		tiff.3.4:${PORTSDIR}/graphics/tiff34 \
		ttf.1.2:${PORTSDIR}/print/freetype

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		--enable-lzw \
		--without-perl

CONFIGURE_ENV=	CPPFLAGS="-I/usr/local/include" \
		LDFLAGS="-L/usr/local/lib"

.include <bsd.port.mk>
