# $OpenBSD: Makefile,v 1.10 1999/04/06 00:09:52 brad Exp $

DISTNAME=	ImageMagick-4.2.0
CATEGORIES=     graphics x11

NEED_VERSION=	1.73

MAINTAINER=	marc@openbsd.org

MASTER_SITES=	ftp://ftp.courtesan.com/pub/OpenBSD/distfiles/

# Future: add FlashPix, NCSA HDF, JBIG, scanimage, etc.
#
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
CONFIGURE_ARGS+= --enable-static
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
