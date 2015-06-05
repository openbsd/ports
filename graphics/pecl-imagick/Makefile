# $OpenBSD: Makefile,v 1.21 2015/06/05 06:00:21 robert Exp $

COMMENT=	PHP support for the ImageMagick library

DISTNAME=	imagick-3.1.0rc2
WRKDIST=	${WRKDIR}/imagick-3.1.0RC2
CATEGORIES=	graphics
REVISION=	1

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE MagickCore MagickWand SM X11 Xext Xt bz2 djvulibre
WANTLIB += expat fftw3 fontconfig freetype jasper jbig jpeg lcms2
WANTLIB += ltdl lzma m png pthread tiff wmf-0.2 wmflite-0.2 xcb xml2 z

MODULES=	converters/libiconv \
		lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	graphics/ImageMagick

.include <bsd.port.mk>
