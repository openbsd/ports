# $OpenBSD: Makefile,v 1.12 1999/05/06 02:10:12 brad Exp $

DISTNAME=	ImageMagick-4.2.3
CATEGORIES=     graphics x11
MASTER_SITES=	ftp://204.183.81.131/pub/ImageMagick/ \
		ftp://ftp.wizards.dupont.com/pub/ImageMagick/ \
		ftp://ftp.cci.fr/pub/unix/gfx/ImageMagick/ \
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

LIB_DEPENDS=	jpeg.62:${PORTSDIR}/graphics/jpeg \
		mpeg.1.2:${PORTSDIR}/graphics/mpeg-lib \
		png.1.3:${PORTSDIR}/graphics/png \
		tiff.3.4:${PORTSDIR}/graphics/tiff34 \
		ttf.1.2:${PORTSDIR}/print/freetype

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		--enable-lzw \
		--without-bzlib \
		--without-perl

CONFIGURE_ENV=	CPPFLAGS="-I/usr/local/include" \
		LDFLAGS="-L/usr/local/lib"

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

.include <bsd.port.mk>
