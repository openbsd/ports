# $OpenBSD: Makefile,v 1.25 2014/01/11 22:51:02 jeremy Exp $

COMMENT =	Ruby interface to ImageMagick

DISTNAME =	rmagick-2.13.1
REVISION =	6
CATEGORIES =	graphics

HOMEPAGE =	http://rmagick.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

WANTLIB =	freetype z MagickCore>=1
WANTLIB += ICE SM X11 Xext Xt bz2 djvulibre expat fftw3 fontconfig
WANTLIB += jasper jbig jpeg lcms2 ltdl lzma png tiff xml2

LIB_DEPENDS =	graphics/ImageMagick

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
