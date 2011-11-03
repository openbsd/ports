# $OpenBSD: Makefile,v 1.16 2011/11/03 07:40:20 jasper Exp $

COMMENT =	Ruby interface to ImageMagick

DISTNAME =	rmagick-2.9.0
REVISION =	0
CATEGORIES =	graphics

HOMEPAGE =	http://rmagick.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =	lang/ruby

WANTLIB =	freetype z MagickCore>=1
WANTLIB += ICE SM X11 Xext Xt bz2 djvulibre expat fftw3 fontconfig
WANTLIB += jasper jbig jpeg lcms ltdl lzma png tiff wmf wmflite
WANTLIB += xml2

LIB_DEPENDS =	graphics/ImageMagick

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
