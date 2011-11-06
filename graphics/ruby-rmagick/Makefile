# $OpenBSD: Makefile,v 1.18 2011/11/06 18:57:58 jasper Exp $

COMMENT =	Ruby interface to ImageMagick

DISTNAME =	rmagick-2.13.1
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
WANTLIB += jasper jbig jpeg lcms ltdl lzma png tiff xml2

LIB_DEPENDS =	graphics/ImageMagick

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
