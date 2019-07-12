# $OpenBSD: Makefile,v 1.38 2019/07/12 20:47:07 sthen Exp $

COMMENT=	PHP support for the ImageMagick library

DISTNAME=	imagick-3.4.4
CATEGORIES=	graphics

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE MagickCore-6.Q16 MagickWand-6.Q16
WANTLIB += SM X11 Xext Xt bz2 c djvulibre expat fftw3 fontconfig
WANTLIB += freetype iconv jasper jbig jpeg lcms2 lzma m openjp2
WANTLIB += png raw_r tiff webp webpmux xcb xml2 z

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	converters/libiconv \
		graphics/ImageMagick

.include <bsd.port.mk>
