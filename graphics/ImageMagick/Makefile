# $OpenBSD: Makefile,v 1.9 1999/03/02 04:41:02 marc Exp $
#

DISTNAME=		ImageMagick-4.2.0
CATEGORIES=     	graphics x11

NEED_VERSION=		1.73

MAINTAINER=		marc@openbsd.org

MASTER_SITES=		ftp://ftp.wizards.dupont.com/pub/ImageMagick/ \
			ftp://renegade.lerc.nasa.gov/ImageMagick/ \
			ftp://ftp.fifi.org/pub/ImageMagick/ \
			ftp://gd.tuwien.ac.at/graphics/ImageMagick/

# Future: add FreeType, FlashPix, NCSA HDF, JBIG, scanimage, etc.
#
RUN_DEPENDS=		fig2dev:${PORTSDIR}/print/transfig \
			gs:${PORTSDIR}/print/ghostscript5 \

LIB_DEPENDS=		jpeg.62.:${PORTSDIR}/graphics/jpeg \
			mpeg.1.:${PORTSDIR}/graphics/mpeg-lib \
			png.1.:${PORTSDIR}/graphics/png \
			tiff.3.4:${PORTSDIR}/graphics/tiff34

USE_X11=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ENV=		CPPFLAGS=-I/usr/local/include \
			LDFLAGS=-L/usr/local/lib

.include <bsd.port.mk>
