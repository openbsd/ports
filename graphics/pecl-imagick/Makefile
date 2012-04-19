# $OpenBSD: Makefile,v 1.12 2012/04/19 21:30:26 sthen Exp $

COMMENT=	PHP support for the ImageMagick library

DISTNAME=	imagick-2.3.0
REVISION=	8
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

MESSAGE=	${PKGDIR}/MESSAGE

.include <bsd.port.mk>
