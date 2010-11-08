# $OpenBSD: Makefile,v 1.10 2010/11/08 23:28:54 jeremy Exp $

COMMENT =	Ruby interface to ImageMagick

DISTNAME =	rmagick-2.9.0
REVISION =	1
CATEGORIES =	graphics

HOMEPAGE =	http://rmagick.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =	lang/ruby

WANTLIB =	freetype z MagickCore.>=1 MagickWand.>=1

LIB_DEPENDS =	::graphics/ImageMagick

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
