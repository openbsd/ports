# $OpenBSD: Makefile,v 1.11 1999/04/18 20:58:41 brad Exp $

DISTNAME=	ImageMagick-4.2.2
CATEGORIES=     graphics x11
MASTER_SITES=	ftp://ftp.wizards.dupont.com/pub/ImageMagick/ \
		ftp://ftp.cci.fr/pub/unix/gfx/ImageMagick/ \
		ftp://ftp.u-aizu.ac.jp/pub/graphics/image/ImageMagick/ \
		ftp://ftp.fifi.org/pub/ImageMagick/ \
		ftp://gd.tuwien.ac.at/pub/graphics/ImageMagick/ \
		ftp://ftp.ms.mff.cuni.cz/MIRRORS/ftp.wizards.dupont.com/pub/ImageMagick/ \
		ftp://ftp.oce.nl/pub/Internet/audio+video/ImageMagick/

NEED_VERSION=	1.73

MAINTAINER=	marc@openbsd.org

RUN_DEPENDS=	fig2dev:${PORTSDIR}/print/transfig \
		gs:${PORTSDIR}/print/ghostscript5 \
		picttoppm:${PORTSDIR}/graphics/netpbm

LIB_DEPENDS=	jpeg:${PORTSDIR}/graphics/jpeg \
		mpeg:${PORTSDIR}/graphics/mpeg-lib \
		png:${PORTSDIR}/graphics/png \
		tiff:${PORTSDIR}/graphics/tiff34 \
		ttf:${PORTSDIR}/print/freetype

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --enable-lzw
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
