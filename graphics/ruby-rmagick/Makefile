# $OpenBSD: Makefile,v 1.12 2010/11/24 21:35:14 jeremy Exp $

COMMENT =	Ruby interface to ImageMagick

DISTNAME =	rmagick-2.9.0
REVISION =	2
CATEGORIES =	graphics

HOMEPAGE =	http://rmagick.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =	lang/ruby

WANTLIB =	freetype z MagickCore>=1 MagickWand>=1

LIB_DEPENDS =	graphics/ImageMagick

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
