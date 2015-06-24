# $OpenBSD: Makefile,v 1.28 2015/06/24 07:24:00 jasper Exp $

COMMENT =	Ruby interface to ImageMagick

DISTNAME =	rmagick-2.15.2
CATEGORIES =	graphics

HOMEPAGE =	http://rmagick.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

WANTLIB =	freetype z MagickCore>=1
WANTLIB += 	ICE SM X11 Xext Xt bz2 djvulibre expat fftw3 fontconfig
WANTLIB += 	jasper jbig jpeg lcms2 ltdl lzma png tiff xml2

LIB_DEPENDS =	graphics/ImageMagick

CONFIGURE_STYLE = ruby gem ext

TEST_DEPENDS =	${BASE_PKGPATH}
MODRUBY_TEST =	rspec3

.include <bsd.port.mk>
