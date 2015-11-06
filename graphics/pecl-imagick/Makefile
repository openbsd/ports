# $OpenBSD: Makefile,v 1.24 2015/11/06 20:37:34 sthen Exp $

COMMENT=	PHP support for the ImageMagick library

DISTNAME=	imagick-3.1.2
CATEGORIES=	graphics

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xext Xt
WANTLIB += bz2 expat fftw3 fontconfig freetype lcms2 ltdl lzma
WANTLIB += m pthread pthread-stubs xcb z

MODULES=	converters/libiconv \
		lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	graphics/ImageMagick

.include <bsd.port.mk>
