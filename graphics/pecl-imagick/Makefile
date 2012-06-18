# $OpenBSD: Makefile,v 1.14 2012/06/18 07:56:13 ajacoutot Exp $

COMMENT=	PHP support for the ImageMagick library

DISTNAME=	imagick-2.3.0
REVISION=	10
CATEGORIES=	graphics

# PHP
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE MagickCore MagickWand SM X11 Xext Xt bz2 djvulibre
WANTLIB += expat fftw3 fontconfig freetype jasper jbig jpeg lcms2
WANTLIB += ltdl lzma m png tiff wmf-0.2 wmflite-0.2 xcb xml2 z

MODULES=	converters/libiconv \
		lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	graphics/ImageMagick

.include <bsd.port.mk>
