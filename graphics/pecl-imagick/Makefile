# $OpenBSD: Makefile,v 1.27 2016/02/01 21:55:38 sthen Exp $

COMMENT=	PHP support for the ImageMagick library

DISTNAME=	imagick-3.1.2
REVISION=	2
CATEGORIES=	graphics

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xext Xt
WANTLIB += bz2 djvulibre expat fftw3 fontconfig freetype jbig
WANTLIB += jpeg lcms2 lzma m openjp2 png pthread pthread-stubs
WANTLIB += tiff webp xcb xml2 z

MODULES=	converters/libiconv \
		lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	graphics/ImageMagick

.include <bsd.port.mk>
