COMMENT=	PHP support for the ImageMagick library

DISTNAME=	imagick-3.8.1
CATEGORIES=	graphics

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xext Xt
WANTLIB += bz2 djvulibre expat fontconfig freetype heif iconv
WANTLIB += jasper jbig jpeg lcms2 lzma m openjp2 png pthread
WANTLIB += raw_r sharpyuv tiff webp webpdemux webpmux xcb
WANTLIB += xml2 z

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	converters/libiconv \
		graphics/ImageMagick
CONFIGURE_ENV+=	CPPFLAGS=-I${LOCALBASE}/include

# php headers pull in pcre2.h
BUILD_DEPENDS+=	devel/pcre2

.include <bsd.port.mk>
